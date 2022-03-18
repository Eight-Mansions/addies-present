"""
Recompresses the images for Kowai Shashin back to the DAT archives

Usage: <folder_of_translated_images> <original_dat> <output_archive>
"""

import sys
from pathlib import Path
import os
import lzss

if len(sys.argv) < 4:
    print("Usage: <folder_of_translated_images> <original_dat> <output_archive>")
    exit()

input_directory = sys.argv[1]
original_archive = sys.argv[2]
output_archive = sys.argv[3]


def word_to_int(value):
    """
    Swaps the endianness of the byte sequence and returns the result as an integer
    """
    sequence_length = len(value)
    if sequence_length % 2 == 1:
        print("Cannot swap the endianness with partial bytes! Attempted: " + value)
        exit(1)

    hex_int = int(value, 16)
    return int.from_bytes(hex_int.to_bytes(sequence_length // 2, byteorder="little"),
                          byteorder="big", signed=False)


"""
Reads the original archive to determine the number of files and file sizes

Header format is
 - # of images (4 bytes)
 - Pointer to image start (4 bytes per image)
 
"""
with open(original_archive, "rb") as archive:
    raw_hex = archive.read().hex()
    images_in_archive = word_to_int(raw_hex[0:8])

    # Gather the pointers to the images and convert them to usable ints
    image_pointers = []
    for x in range(1, images_in_archive + 1):
        index = (x * 8)
        image_pointers.append(word_to_int(raw_hex[index:index + 8]))

    # The image data starts after the header. The header length is 4 bytes per pointer plus
    # 4 bytes for the number of entries.
    image_data_start = (images_in_archive * 4) + 4

    output_bytes = bytearray()
    output_pointers = []

    # Iterate through the images and add them to the archive
    for index, pointer in enumerate(image_pointers):
        # The decompressor outputs in the format of "TITLE.DAT-0x25e50.TIM"
        filename = os.path.basename(archive.name) + "-" + str(hex(pointer)) + ".TIM"
        pointer_image = Path(input_directory) / filename

        # If this image is not one we've translated, add it as-is
        if not pointer_image.is_file():
            pointer_end = len(raw_hex)
            if index < len(image_pointers):
                pointer_end = image_pointers[index + 1]
            image_bytes = raw_hex[pointer * 2:pointer_end * 2]
            output_pointers.append(int(len(output_bytes) / 2) + image_data_start)
            output_bytes += bytes.fromhex(image_bytes)

        # Recompress translated images
        else:
            with open(pointer_image, "rb") as image:
                image_hex = image.read().hex()
                compressed_bytes = lzss.compress(bytes.fromhex(image_hex))
                output_pointers.append(len(output_bytes) + image_data_start)

                # Calculate the compressed and uncompressed sizes, then append them as
                # 4 bytes each before the data
                compressed_byte_size = len(compressed_bytes).to_bytes(4, byteorder="little")
                uncompressed_byte_size = int((len(image_hex) / 2)).to_bytes(4, byteorder="little")

                output_bytes += compressed_byte_size
                output_bytes += uncompressed_byte_size

                # Double the size since python measures in single hex values, but byte array will
                # only take full bytes. The goal is to pad to 4 bytes.
                compressed_size = len(compressed_bytes) * 2
                alignment = 8 - (compressed_size % 8)
                alignment_bytes = bytearray(int(alignment / 2))

                output_bytes += compressed_bytes
                output_bytes += alignment_bytes

    # Create the output file and write out the header
    with open(output_archive, "wb") as output:
        output.write(images_in_archive.to_bytes(4, "little"))

        for pointer in output_pointers:
            output.write(pointer.to_bytes(4, "little"))

        # Add the image data
        output.write(output_bytes)
