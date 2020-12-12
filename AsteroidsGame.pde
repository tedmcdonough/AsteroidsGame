Star[] night = new Star [300];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> q = new ArrayList <Asteroid>();
public void setup() 
{
  size(700, 700);
  for(int i =0; i < night.length; i++) {
    night[i] = new Star();
  }
  for(int i = 0; i < 15; i++) {
    q.add(new Asteroid());
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
    for(int i = 0; i < q.size(); i++) {
    q.get(i).move();
    q.get(i).show();
    float distance = dist((float)bob.getX(), (float)bob.getY(), (float)q.get(i).getX(), (float)q.get(i).getY());  
    if (distance < 15) {
      q.remove(i);
    }
  }
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
   bob.accelerate(2);
  }
}
