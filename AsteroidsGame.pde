Spaceship bob = new Spaceship();
public void setup()
{
  size(500, 500);
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky [i] = new Star();
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i <sky.length; i++) {
    sky[i].show();
        fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));

  }
  bob.show();
  bob.move();
}

public void keyPressed() {
  if (key == '0') {
    bob.hyperspace();
  }

  if (key == '1') {
    bob.accelerate(0.5);
  }
  if (key == '2') {
    bob.accelerate(-0.5);
  }

  if (key == '3') {
    bob.turn(6.0);
  }

  if (key == '4') {
    bob.turn(-6.0);
  }
}
