Spaceship friend = new Spaceship();
Star[] galaxy = new Star[70];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

void setup(){
  size(800,800);
  background(0);
  for(int i=0; i<galaxy.length; i++){
    galaxy[i] = new Star();
    galaxy[i].show();
  }
  for(int i=0; i<7; i++){
    rocks.add(new Asteroid());
  }
}

void draw(){
  background(0);
  friend.show();
  friend.move();
  for(int i=0; i<galaxy.length; i++){
    galaxy[i].show();
  }
  for(int i=0; i<rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    if (dist((float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY(), (float)friend.getCenterX(), (float)friend.getCenterY()) < 20){
      rocks.remove(i);
    }
  }
}

public void keyPressed(){
  if (key == ' '){
    friend.hyperspace();
  }
  
  if (key == 'f'){
    friend.turn(10.0);
  }
  
  if (key == 's'){
    friend.turn(-10.0);
  }
  
  if (key == 'd'){
    friend.accelerate(0.5);
  }
}
