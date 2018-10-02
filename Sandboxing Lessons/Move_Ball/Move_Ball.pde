//Global variables
int ballX;
int ballY;
int ballStartX;
int ballStartY;
int ballDiameter;
void setup () {
  size(700, 700);
  ballStartX = width/2;
  ballStartY = height/2; 
  ballX = ballStartX;
  ballY = ballStartY;
  ballDiameter = width/60;
}

void draw () {
  background(#4EC9F2);
  
  if (ballX < width) {
    ballX += 1;
  }
  if (ballY < height) {
    ballY += 1;
  }
  
  fill(0);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  
  print ("Ball X-Value: " + ballX);
  println (", BallY-Value: " + ballY);
}
