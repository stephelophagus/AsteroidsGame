class Bullet extends Floater {
  public Bullet (Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate(3);
  }
  
  public void show() {
    fill (#FFFEFC);
    ellipse((float)myCenterX, (float)myCenterY, 10,10);
    
  }
  
 
  
  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
}
