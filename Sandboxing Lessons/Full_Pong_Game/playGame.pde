void playGame() {
   background(#4EC9F2);
    if (ballX == width || ballX == 0) {
    ballMoveX = ballMoveX * (-1);
  }
  if (ballY == height || ballY == 0) {
    ballMoveY = ballMoveY * (-1);
  }
  
  fill(0);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
}
