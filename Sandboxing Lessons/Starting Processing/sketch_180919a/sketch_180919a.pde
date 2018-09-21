// Global variables
int BallStartX;
int BallStartY;
int BallMoveX;
int BallMoveY;
int BallX;
int BallY;
void setup() {
  background (200,200,200);
  size (700, 700);
  BallMoveX = BallX + 1;
  BallMoveY = BallY + 1;
  BallX = width/2;
  BallY = height/2;
} 

void draw() {
  ellipse (height/2, width/2, 10, 10);
}
