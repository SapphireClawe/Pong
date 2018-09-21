// Global variables
int BallStartX;
int BallStartY;
int BallMoveX;
int BallMoveY;
int BallX;
int BallY;
void setup() {
  background (97, 194,247);
  size (700, 700);
  BallMoveX = BallX + 1;
  BallMoveY = BallY + 1;
  BallX = width/2;
  BallY = height/2;
} 

void draw() {
  ellipse (BallY, BallX, 10, 10);
}
