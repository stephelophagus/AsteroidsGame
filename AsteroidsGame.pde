Spaceship bob = new Spaceship();
ArrayList <Asteroid> asteroids; 
Star[] sky = new Star[200];
public void setup()
{
  size(500, 500);
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky [i] = new Star();
  }
  
  asteroids = new ArrayList <Asteroid>();
  
  for (int i = 0; i < 10; i++){
    asteroids.add(i, new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i <sky.length; i++) {
    sky[i].show();

  }
  bob.show();
  bob.move();

  for (int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
    float d = dist((float)(bob.getX()), (float)bob.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY());
    if (d<20){
      asteroids.remove(i);
      i--;
    }

  }
}

public void keyPressed() {
  if (key == '0') {
    bob.hyperspace();
  }

  if (key == 'w') {
    bob.accelerate(0.5);
  }
  if (key == 's') {
    bob.accelerate(-0.5);
  }

  if (key == 'd') {
    bob.turn(6.0);
  }

  if (key == 'a') {
    bob.turn(-6.0);
  }
}
