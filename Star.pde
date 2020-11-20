class Star
{
  private int myX, myY, r, g, b;
  public Star() {
    myX = (int)(Math.random()*700);
    myY = (int)(Math.random()*700);
    r = (int)(Math.random()*255);
    g = (int)(Math.random()*255);
    b = (int)(Math.random()*255);
  }
  public void show() {
    fill(r, g, b);
    stroke(r, g, b);
    ellipse(myX, myY, 5, 5);
  }
}
