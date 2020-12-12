class Bullet extends Floater {
  public Bullet(Spaceship ship) {
    myColor = color(255);
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getmyPointDirection();
    myXspeed = ship.getmyXspeed(); 
    myYspeed = ship.getmyYspeed();
    accelerate(6);
  }
  public void show() {
    fill(myColor);
    ellipse((int)myCenterX, (int)myCenterY, 5, 5);
  }
  public void move ()  
  {      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
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
