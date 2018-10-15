void gameStart() {
  ballStartX = width/2;
  ballStartY = height/2;
  ballX = ballStartX;
  ballY = ballStartY;
  ballDiameter = width/70;

  ballX += ballMoveX;
  ballY += ballMoveY;
  

  
  print ("Ball X-Value: " + ballX);
  println (", Ball Y-Value: " + ballY);
