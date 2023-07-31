using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using timmer;

namespace addies_present_data_cts_manual_insert
{
    class Program
    {
        static int num = 0;
        struct Entry
        {
            public string filename;
            public string outdir;
            public byte file_flag;
            public ushort offset;
            public uint actualOffset;
            public uint size;
            public uint unk3;
            public ushort num_entries;
            public ushort unk2;

        }

        static List<Entry> files = new List<Entry>();

        static Entry GetEntry(BinaryReader cts)
        {
            Entry entry = new Entry();
            entry.filename = Encoding.ASCII.GetString(cts.ReadBytes(0x0D)).Replace("\0", "");
            entry.file_flag = cts.ReadByte();
            entry.offset = cts.ReadUInt16();
            entry.size = cts.ReadUInt16();
            entry.unk3 = cts.ReadUInt16();
            entry.num_entries = cts.ReadUInt16();
            entry.unk2 = cts.ReadUInt16();

            return entry;
        }

        static void CreateDirectory(BinaryReader cts, Entry entry, uint offset, string cur_dir)
        {
            cur_dir = cur_dir + "\\" + entry.filename;

            for (int i = 0; i < entry.num_entries; i++)
            {
                Entry child = GetEntry(cts);
                if (child.filename == "")
                {
                    break;
                }

                if (child.file_flag == 0)
                {
                    CreateDirectory(cts, child, entry.offset + offset, cur_dir);
                }
                else
                {
                    CreateFile(cts, child, entry.offset + offset, cur_dir);
                }
            }
        }

        static void CreateFile(BinaryReader cts, Entry entry, uint offset, string cur_dir)
        {
            entry.outdir = cur_dir;
            entry.actualOffset = entry.offset + offset;
            files.Add(entry);
        }

        static void Main(string[] args)
        {
            string filename = args[0]; //"orig\\DATA.CTS";
            string outfilename = args[1]; //"ins\\DATA.CTS";\
            string indir = args[2]; //"graphics\\data_cts"

            BinaryReader cts = new BinaryReader(File.OpenRead(filename));
            BinaryWriter outcts = new BinaryWriter(File.OpenWrite(outfilename));

            outcts.Write(cts.ReadBytes((int)cts.BaseStream.Length));

            cts.BaseStream.Seek(0, SeekOrigin.Begin);

            Entry bogus = GetEntry(cts); // Maybe a bogus one...
            Entry parent = GetEntry(cts);
            CreateDirectory(cts, parent, parent.offset, indir);

            foreach (Entry entry in files)
            {
                if (File.Exists(entry.outdir + "\\" + entry.filename + ".png"))
                {
                    cts.BaseStream.Seek(entry.actualOffset * 0x800, SeekOrigin.Begin);
                 
                    // Insert left image
                    ushort width = 146;
                    ushort height = 193;
                    ushort[] cdata = new ushort[0x100];
                    for (int i = 0; i < cdata.Length; i++)
                    {
                        cdata[i] = cts.ReadUInt16();
                    }

                    long curPos = cts.BaseStream.Position;
                    byte[] pdata = cts.ReadBytes(0x6E12);

                    TIM tim = new TIM(1, 1, width, height, cdata, pdata);
                    tim.ImportImage(entry.outdir + "\\" + entry.filename + ".png");

                    outcts.BaseStream.Seek(curPos, SeekOrigin.Begin);
                    outcts.Write(tim.GetPixelData());

                    cts.ReadUInt16();

                    // Insert right image
                    cdata = new ushort[0x100];
                    for (int i = 0; i < cdata.Length; i++)
                    {
                        cdata[i] = cts.ReadUInt16();
                    }

                    curPos = cts.BaseStream.Position;
                    pdata = cts.ReadBytes(0x6E12);

                    tim = new TIM(1, 1, width, height, cdata, pdata);
                    tim.ImportImage(entry.outdir + "\\" + entry.filename + ".R.png");

                    outcts.BaseStream.Seek(curPos, SeekOrigin.Begin);
                    outcts.Write(tim.GetPixelData());
                }            
            }

            outcts.Close();
            cts.Close();
        }
    }
}


