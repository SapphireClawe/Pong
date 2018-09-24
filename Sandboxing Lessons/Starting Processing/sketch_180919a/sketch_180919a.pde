// Global variables
int BallMoveX = 1;
int BallMoveY = 1;
int BallX, BallStartX;
int BallY, BallStartY;
void setup() {
  size (700, 700);
  BallMoveX = BallX + 1;
  BallMoveY = BallY + 1;
  BallStartX = width/2;
  BallStartY = height/2;
} 

void draw() {
   background (97, 194,247);
  for (int BallMoveX = 0; BallMoveX < 340; BallMoveX = BallMoveX+1){
    ellipse (BallY, BallMoveX, 10, BallMoveX);
  }
}
