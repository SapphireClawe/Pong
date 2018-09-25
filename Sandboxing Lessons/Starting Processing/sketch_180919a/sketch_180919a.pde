// Global variables
float BallMoveX = 1; // Issues with bounce
float BallMoveY = 1;
int BallX, BallStartX; // Initializing by groups and arrays
int BallY, BallStartY;
int BallDiameter;
int[] score = {0, 0};



void setup() {
  size (500, 500); 
  BallMoveX = BallX + 1;
  BallMoveY = BallY + 1;
  BallStartX = width/2; // Starting position
  BallStartY = height/2;
  BallX = BallStartX;
  BallY = BallStartY;
  BallDiameter = width/70; // Diameter, not radius. Radius is BallDiameter/2.
} 

void draw() {
   background (97, 194, 247);
   
   BallMoveX += BallX;
   BallMoveY += BallY;
   if (BallY == width) { // Player 1 score
   score[0] += 1;
   println ("Score Board is: " + score[0] + " Player 1" + "     " + score[1] + " Player 2");
   BallStartX = BallX;
   BallStartY = BallY;
   }
   if (BallX == 0) { // Player 2 score
   score[1] += 1;
   println ("Score Board is: " + score[0] + " Player 1" + "     " + score[1] + " Player 2");
   BallStartX = BallX;
   BallStartY = BallY;
   }
   
   if (BallX == width || BallX == 0){
     
     //  BallMoveX *= (-1); 
  
   }
   if (BallY == height || BallY == 0){
     BallMoveY = BallMoveY * (-1);
     
   }
    ellipse (BallX, BallY, BallDiameter, BallDiameter);
  
}
