class Spaceship extends Floater
{
  public Spaceship() {
    corners = 4;
    xCorners = new int[]{16, -8, -2, -8};
    yCorners = new int[] {0, 8, 0, -8};
    myColor = color(255, 255, 255);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

public void hyperspace() {
  myXspeed = 0;
  myYspeed = 0;
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500);
  myPointDirection = (int)(Math.random()*500);
}
  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }

  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }

  public double getPointDirection () {
    return myPointDirection ;
  }
}
