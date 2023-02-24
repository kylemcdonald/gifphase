int base[] = {
0x47, 0x49, 0x46, 0x38, 0x39, 0x61, 0x01, 0x00, 
0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 
0xFF, 0xFF, 0xFF, 0x21, 0xFF, 0x0B, 0x4E, 0x45, 
0x54, 0x53, 0x43, 0x41, 0x50, 0x45, 0x32, 0x2E, 
0x30, 0x03, 0x01, 0x00, 0x00, 0x00, 0x21, 0xF9, 
0x04, 0x04, 0x0A, 0x00, 0x00, 0x00, 0x2C, 0x00, 
0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 
0x02, 0x02, 0x4C, 0x01, 0x00, 0x21, 0xF9, 0x04, 
0x04, 0x0A, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 
0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x02, 
0x02, 0x44, 0x01, 0x00, 0x3B, 0x02, 0x44, 0x01,
0x00, 0x3B};
int offset0 = 42, offset1 = 65;
int n = 256;
String html[] = new String[n];
for (int i = 0; i < n; i++) {
  base[offset0] = (byte) i;
  base[offset1] = (byte) i;
  String name = "img/" + i + ".gif";
  saveBytes(name, byte(base));
  html[i] = "<img src='" + name + "'/>";
}
String css =
  "<style>" +
  "body{margin:0;padding:0;font-size:0}" +
  "img{margin:0;padding:0;width:6.25%}" +
  "</style>\n";
html[0] = css + html[0];
saveStrings("index.html", html);
