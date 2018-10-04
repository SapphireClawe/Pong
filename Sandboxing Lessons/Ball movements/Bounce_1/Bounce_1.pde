
//Global variables
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;
void setup () {
  size(700, 700);
  ballStartX = width/2;
  ballStartY = height/2;
  ballX = ballStartX;
  ballY = ballStartY;
  ballDiameter = width/70;
}

void draw () {
  background(#4EC9F2);
  
  ballX += ballMoveX;
  ballY += ballMoveY;
  
  if (ballX == width || ballX == 0) {
    ballMoveX = ballMoveX * (-1);
  }
  if (ballY == height || ballY == 0) {
    ballMoveY = ballMoveY * (-1);
  }
  
  fill(0);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  
  print ("Ball X-Value: " + ballX);
  println (", Ball Y-Value: " + ballY);
}
