//your variable declarations here
Star starz[] = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
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
  showBullets();
  removeBulletAndAsteroi();
  endgame();
}
public void showBullets() {
  for(int i = 0; i < bullets.size(); i++) {
    bullets.get(i).show();
    //bullets.get(i).accelerate();
    bullets.get(i).move();
  }
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
public void removeBulletAndAsteroi() { 
  for(int n = 0; n < asteroids.size(); n++) {
    Asteroidd asteroida = asteroids.get(n);
    int asteroidx = asteroida.getX();
    int asteroidy = asteroida.getY();
    for(int i = 0; i < bullets.size(); i++) {
      Bullet b = bullets.get(i);
      int bulletx = b.getX();
      int bullety = b.getY();
      if(dist((int)asteroidx, (int)asteroidy, (int)bulletx, (int)bullety) < 15 ) {
        bullets.remove(i);
        asteroid.remove(n);
        i--;
        n--;
      }
    }
  }
}
public void endgame() {
  if(asteroid.size() == 0) {
    text("nice", 400, 400);
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
  if(key == ' '){
      bullets.add(new Bullet(ship)); 
  }
}
