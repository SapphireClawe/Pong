// Global variables
float BallMoveX = 1;
float BallMoveY = 1;
int BallX, BallStartX;
int BallY, BallStartY;
int BallDiameter;
void setup() {
  size (500, 500);
  BallMoveX = BallX + 1;
  BallMoveY = BallY + 1;
  BallStartX = width/2;
  BallStartY = height/2;
  BallX = BallStartX;
  BallY = BallStartY;
  BallDiameter = width/70;
} 

void draw() {
   background (97, 194,247);
   if (BallX <= width && BallX >= 0) {
  
   }
   if (BallY <= width && BallY >= 0) {
   }
    ellipse (width/2, height/2, width/70, height/70);
  
}
