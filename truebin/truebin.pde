import java.util.Date;
void setup() {
  size(400, 400);
  textAlign(LEFT, TOP);
  surface.setAlwaysOnTop(true);
  ellipseMode(CORNER);
  stroke(255);
}

float elapsedSeconds;
int[] digits = new int[16];
int digit1;
int digit2;
int digit3;
int digit4;
int digit5;
int digit6;
int digit7;
int digit8;
int digit9;
int digit10;
int digit11;
int digit12;
int digit13;
int digit14;
int digit15;
int digit16;
String binaryTime;

float binaryFraction;
void draw() {
  Date now = new Date();
  
  elapsedSeconds = (hour() * 3600) + (minute() * 60) + second() + ((now.getTime() % 1000) / 1000.0);
  
  // converts elapsedSeconds into number between 0 and 65535. (e.g. 1 means 1/65536 of the day has passed)
  binaryFraction = floor(elapsedSeconds / (86400.0 / 65536.0));
  
  digits[0] = floor(binaryFraction / 32768);
  binaryFraction -= 32768 * digits[0];
  
  digits[1] = floor(binaryFraction / 16384);
  binaryFraction -= 16384 * digits[1];
  
  digits[2] = floor(binaryFraction / 8192);
  binaryFraction -= 8192 * digits[2];
  
  digits[3] = floor(binaryFraction / 4096);
  binaryFraction -= 4096 * digits[3];
  
  digits[4] = floor(binaryFraction / 2048);
  binaryFraction -= 2048 * digits[4];
  
  digits[5] = floor(binaryFraction / 1024);
  binaryFraction -= 1024 * digits[5];
  
  digits[6] = floor(binaryFraction / 512);
  binaryFraction -= 512 * digits[6];
  
  digits[7] = floor(binaryFraction / 256);
  binaryFraction -= 256 * digits[7];
  
  digits[8] = floor(binaryFraction / 128);
  binaryFraction -= 128 * digits[8];
  
  digits[9] = floor(binaryFraction / 64);
  binaryFraction -= 64 * digits[9];
  
  digits[10] = floor(binaryFraction / 32);
  binaryFraction -= 32 * digits[10];
  
  digits[11] = floor(binaryFraction / 16);
  binaryFraction -= 16 * digits[11];
  
  digits[12] = floor(binaryFraction / 8);
  binaryFraction -= 8 * digits[12];
  
  digits[13] = floor(binaryFraction / 4);
  binaryFraction -= 4 * digits[13];
  
  digits[14] = floor(binaryFraction / 2);
  binaryFraction -= 2 * digits[14];
  
  digits[15] = floor(binaryFraction);
  binaryFraction -= digits[15];
  
  //binaryTime = str(digit1) + str(digit2) + str(digit3) + str(digit4) + str(digit5) + str(digit6) + str(digit7) + str(digit8) + str(digit9) + str(digit10) + str(digit11) + str(digit12) + str(digit13) + str(digit14) + str(digit15) + str(digit16);
  background(0);
  for (int i = 0; i < 16; i++) {
    fill(0);
    if (digits[i] == 1) {
      fill(255);
    }
    ellipse((i%4)*100, (floor(i/4))*100, 100, 100);
  }
  /*textSize(65);
  text(binaryTime, 15, 30);*/
}
