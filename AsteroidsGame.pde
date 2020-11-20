Star[] night = new Star [300];
Spaceship bob = new Spaceship();
public void setup() 
{
  size(700, 700);
  for(int i =0; i < night.length; i++) {
    night[i] = new Star();
  }
}
public void draw() 
{
  background(#000000);
  for(int i =0; i < night.length; i++) {
    night[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed () {
  if(key == 'h') { //hyperspace
    bob.hyperspace();
  }
  if(key == 'a') { //turn left
    bob.turn(-10);
  }
  if(key == 'd') { //turn right
    bob.turn(10);
  }
  if(key == 'w') { //accelerate
   bob.accelerate(5);
  }
}
