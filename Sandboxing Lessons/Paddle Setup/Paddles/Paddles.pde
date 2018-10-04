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
  
  
  
}
