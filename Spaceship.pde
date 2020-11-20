class Spaceship extends Floater  
{   
    //your code here
   public Spaceship() {
    corners = 4; 
    xCorners = new int [corners];   
    yCorners = new int [corners];   
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -4;
    yCorners[3] = 0;
    
    myColor = 255;   
    myCenterX = 400; 
    myCenterY = 400; 
    myXspeed = 0;
    myYspeed = 0;  
    myPointDirection = 0;
    
  }
  public void hyperspace() {
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myPointDirection = (int)(Math.random()*360);
    myXspeed = 0; 
    myYspeed = 0; 
  }
  public void turn(double rotationDegree){
    myPointDirection+=rotationDegree;
    if(myPointDirection == -360 || myPointDirection == 360){
      myPointDirection = 0; 
    }
  }
}
