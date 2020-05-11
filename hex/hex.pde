import java.util.Date;
void setup() {
  size(210, 150);
}

void draw() {
  background(0, 0, 0);
  Date now = new Date();
  float elapsedSeconds = (hour() * 3600) + (minute() * 60) + second() + ((now.getTime() % 1000) / 1000.0);
  // converts elapsedSeconds into number between 0 and 65535. (e.g. 1 means 1/65536 of the day has passed)
  int hexaTime = floor(elapsedSeconds / (86400.0 / 65536.0));
  int firstHexa = floor(hexaTime / 4096);
  int secondHexa = floor(hexaTime / 256) % 16;
  int thirdHexa = floor((hexaTime % 256) / 16);
  int fourthHexa = hexaTime % 16;
  String[] hexDigits = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"};
  String hexDisplay = hexDigits[firstHexa] + "_" + hexDigits[secondHexa] + hexDigits[thirdHexa] + "_" + hexDigits[fourthHexa];
  textSize(50);
  text(hexDisplay, 10, 80);
}
/*println(firstHexa);
println(secondHexa);
println(thirdHexa);
println(fourthHexa);
println(hexaTime);*/
