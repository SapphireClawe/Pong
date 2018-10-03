//Global variables
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;
void setup () {
  size(700, 700);
}

void draw () {
  background(#4EC9F2);
  
  ballX += ballMoveX;
  ballY += ballMoveY;
  
  if (ballX == width || ballX == 0) {
    ballMoveX = ballMoveX * (-1);
  }
  
}
