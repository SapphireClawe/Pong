//Global variables
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;
int paddleWidthRatio;
int paddleHeightRatio = 10;
int [] paddle = {0, 0};
int [] player = new int [4];
void setup () {
  size(700, 700);
  ballStartX = width/2;
  ballStartY = height/2;
  ballX = ballStartX;
  ballY = ballStartY;
  ballDiameter = width/70;
  
  paddleWidthRatio = ballDiameter/2;
  paddle[0] = paddleWidthRatio;
  paddle[1] = height/paddleHeightRatio;
  player[0] = 0;
  player[1] = height/2 - height/paddleHeightRatio/2;
  int section = width / paddleWidthRatio;
  player[2] = width*(section-1)/section;
  player[3] = height/2;
  
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
  
  //Player 1 movement
  
  if (keyPressed == true & key == CODED) {
    if (keyCode == UP)  {
      if (player[1] >= 5) {
        player[1] -= 5;
      }
      if (player[1] <0) {
        player[1] = 0;
      }
    }
    
    if (keyCode == DOWN) {
      if (player[1] + paddle[1] <= height) {
        player[1] += 5;
      }
      if (player[1] + paddle[1] > height) {
        player[1] = height - paddle[1] - 1;
      }
    }
  }
  
  //Player 2 movement
  
  if (mouseY >=0 || mouseY - paddle[1] < height) {
    player[3] = mouseY;
  }
  if (mouseY >= height - paddle[1]) {
    player[3] = height - paddle[1] - 1;
  }
  
  
  
  fill(#FF00FF);
  rect(player[0], player[1], paddle[0], paddle[1]);
  rect(player[2], player[3], paddle[0], paddle[1]);
  
  
}
