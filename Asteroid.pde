class Asteroid extends Floater {
  private double rotateSpeed;
  public Asteroid() {
    rotateSpeed = 0.75;
    corners = 4;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -8;
    xCorners[1] = -8;
    xCorners[2] = 8;
    yCorners[0] = -8;
    yCorners[1] = 8;
    yCorners[2] = 8;
    xCorners[3] = 8;
    yCorners[3] = -8;
    myCenterX = (int)(Math.random()*700);
    myCenterY = (int)(Math.random()*700);
    myXspeed = (double)(Math.random()*2)-1;
    myYspeed = (double)(Math.random()*2)-1;
    myPointDirection = (int)(Math.random()*360); 
    myColor = 255;
  }
  public void move() {
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
