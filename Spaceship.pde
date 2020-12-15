class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 3;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -8;
    xCorners[1] = -8;
    xCorners[2] = 16;
    yCorners[0] = -8;
    yCorners[1] = 8;
    yCorners[2] = 0;
    myCenterX = 350;
    myCenterY = 350;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myColor = 255;
}
  public void hyperspace() {
    myPointDirection = (int)(Math.random()*700);
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*700);
    myCenterY = (int)(Math.random()*700);
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
    public double getPointDirection() {
    return myPointDirection;
  }
}
