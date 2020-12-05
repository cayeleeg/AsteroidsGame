//your variable declarations here
Star starz[] = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Spaceship ship = new Spaceship();
private boolean left, right, forward, backwards;

public void setup() 
{
  //your code here
  size(800,800);
  background(0);
  for (int i = 0; i < starz.length; i++) {
    starz[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  //your code here
  background(0);
  ship.show(); 
  ship.move();
  shipsDirection();
  showStarz();
  showAndMoveAsteroid();
}
public void showStarz() {
  for(int i = 0; i < starz.length; i++) {
    starz[i].show();
  }
}
public void shipsDirection() {
  if(forward) {
    ship.accelerate(0.2);
  }
  if(backwards) {
    ship.accelerate(-0.2);
  }
  if(left){
    ship.turn(-5);
  }
  if(right) {
    ship.turn(5);
  }
}
public void showAndMoveAsteroid() {
  for(int i = 0; i < 10; i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
  }
}
public void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      forward = true; 
    }
    if(keyCode == DOWN) {
      backwards = true;
    }
    if (keyCode == LEFT) {
      left = true;
    }
    if (keyCode == RIGHT) {
       right = true;
    }
    if(keyCode == SHIFT){
      ship.hyperspace();
    }
  }
}

public void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      forward = false;
    }
    if(keyCode == DOWN) {
      backwards = false;
    }
    if (keyCode == LEFT) {
      left = false;
    }
    if (keyCode == RIGHT) {
       right = false;
    }
  }
}
