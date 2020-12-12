class Asteroid extends Floater {
  private int rotate; 
  public Asteroid() {
    rotate = (int)(Math.random()*10-5);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8; 
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(210,210,210);
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
    myPointDirection = (int)(Math.random()*360);
  }
  public void move() {
    turn(rotate);
    super.move();
  }
  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int)myCenterX; 
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY; 
  }
  public void setmyXspeed(int xSpeed) {
    myXspeed = xSpeed;
  }
  public int getmyXspeed() {
    return (int)myXspeed; 
  }
  public void setmyYspeed(int ySpeed) {
    myYspeed = ySpeed;
  }
  public int getmyYspeed() {
    return (int)myYspeed; 
  }
  public void setmyPointDirection(int degree) {
    myPointDirection = degree;
  }
  public int getmyPointDirection() {
    return (int)myPointDirection; 
  }
}
