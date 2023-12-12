class Asteroid extends Floater {
  private double rotateSpeed;
  
  public Asteroid() {
    corners = 16;
   

    xCorners = new int[]{6,8,8,5,1,-2,-3,-4,-5,-4,-3,-2,1,5,8,8};
    yCorners = new int[]{0,-3,-6,-8,-8,-5,-3,-1,0,1,3,5,8,8,6,2};
    myColor = color(252,147,232);
    myCenterX = (int)(Math.random() *500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*8);
    myYspeed = (int)(Math.random()*8);
    myPointDirection = (int)(Math.random()*360);
    rotateSpeed = (int)(Math.random()*8-4);
  }
  
  public void move ()  {
    turn(rotateSpeed);
    super.move();
  }
      
     
  
  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
}
