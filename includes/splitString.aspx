        using System;
        using System.Text;
        using Microsoft.VisualBasic;

        public class StringSplit {
            private static void Main(string[] args) {
                int iterations = 10000;
                string testString = InitializeString();

                DoVBSplit(testString, iterations);
                DoSplitByString(testString, iterations);
                DoSplit(testString, iterations);
                DoMultiCharSplit(testString, iterations);
            }

            private static string InitializeString() {   
                string appendStr = "a b c d\r\n";
                int copies = 100;
                StringBuilder sb = new StringBuilder(appendStr.Length * copies);
                for(int i = 0; i < copies; i++) {
                    sb.Append(appendStr);
                }
               
                return sb.ToString();
            }
           
            private static void DoMultiCharSplit(string testString, int iterations) {
                DateTime start, end;
               
                start = DateTime.Now;
                for(int i = 0; i < iterations; i++) {
                    testString.Split(new char[] {'\r', '\n'});
                }
                end = DateTime.Now;
                Console.WriteLine("DoMultiCharSplit: {0}", end - start);
            }

            private static void DoSplit(string testString, int iterations) {
                DateTime start, end;
               
                start = DateTime.Now;
                for(int i = 0; i < iterations; i++) {
                    testString.Split('\r');
                }
                end = DateTime.Now;
                Console.WriteLine("DoSplit: {0}", end - start);
            }
           
            private static void DoSplitByString(string testString, int iterations) {
                DateTime start, end;
               
                start = DateTime.Now;
                for(int i = 0; i < iterations; i++) {
                    SplitByString(testString, "\r\n");
                }
                end = DateTime.Now;
                Console.WriteLine("DoSplitByString: {0}", end - start);
            }
           
            private static void DoVBSplit(string testString, int iterations) {
                DateTime start, end;
               
                start = DateTime.Now;
                for(int i = 0; i < iterations; i++) {
                    Strings.Split(testString, "\r\n", 1000, CompareMethod.Text);
                }
                end = DateTime.Now;
                Console.WriteLine("DoVBSplit: {0}", end - start);
            }
           
            private static string[] SplitByString(string testString, string split) {
                int offset = 0;
                int index = 0;
                int[] offsets = new int[testString.Length + 1];
               
                while(index < testString.Length) {
                    int indexOf = testString.IndexOf(split, index);
                    if ( indexOf != -1 ) {
                        offsets[offset++] = indexOf;
                        index = (indexOf+split.Length);
                    } else {
                        index = testString.Length;
                    }
                }
               
                string[] final = new string[offset+1];
                if ( offset == 1 ) {
                    final[0] = testString;
                } else {
                    offset--;
               
                    final[0] = testString.Substring(0, offsets[0]);
                    for(int i = 0; i < offset; i++) {
                        final[i+1] = testString.Substring(offsets[i]+split.Length, offsets[i+1]-offsets[i]-split.Length);
                    }
                    final[offset+1] = testString.Substring(offsets[offset]+split.Length);
                }
               
                return final;
            }
        }