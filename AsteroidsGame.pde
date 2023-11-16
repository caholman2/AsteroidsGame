Spaceship friend = new Spaceship();
Star[] galaxy = new Star[70];

void setup(){
  size(800,800);
  background(0);
  for(int i=0; i<galaxy.length; i++){
    galaxy[i] = new Star();
    galaxy[i].show();
  }
}

void draw(){
  background(0);
  for(int i=0; i<galaxy.length; i++){
    galaxy[i].show();
  }
  friend.show();
  friend.move();
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
    friend.accelerate(0.25);
  }
}
