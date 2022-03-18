"""
Formats the translated files for Kowai Shashin

Usage: <input_script_folder> <output_directory>
"""
import sys
import os
from pathlib import Path

# Return a usage message if not enough arguments were supplied

if len(sys.argv) < 3:
    print("Usage: <input_script_folder> <output_directory>")
    exit()

input_directory = sys.argv[1]
output_path = sys.argv[2]


def read_directory(directory):
    """
    Scans the given directory recursively and parses any files within
    :param directory: Current directory to scan
    """
    for path in Path(directory).rglob("*"):
        if path.is_file():
            print("Scanning " + path.name)
            try:
                parent = path.parent
                format_file(path, parent)
            except ValueError:
                print("Failed to parse " + path.name)
                continue


def format_file(script, parent):
    output_file = os.path.join(output_path, parent.name)
    output_file = os.path.join(output_file, script.name)

    with open(output_file, "w") as file:
        with open(script.absolute(), "r") as script:
            for line in script.readlines():
                if line.startswith("#") or line.startswith("//") or line.startswith("\n"):
                    file.write(line)
                    continue

                # Replace all spaces in translations with <$7F> since the game renders those as blanks
                line = line.replace(" ", "<$7F>")
                file.write(line)


read_directory(input_directory)
