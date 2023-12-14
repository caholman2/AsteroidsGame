Spaceship friend = new Spaceship();
Star[] galaxy = new Star[70];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> gals = new ArrayList <Bullet>();

void setup(){
  size(800,800);
  background(0);
  for(int i=0; i<galaxy.length; i++){
    galaxy[i] = new Star();
    galaxy[i].show();
  }
  for(int i=0; i<8; i++){
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
  for(int i=rocks.size()-1; i>=0; i--){
    if (dist((float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY(), (float)friend.getCenterX(), (float)friend.getCenterY()) < 20){
      rocks.remove(i);
      break;
    }
    rocks.get(i).show();
    rocks.get(i).move();
  }
  for(int i=gals.size()-1; i>=0; i--){
    for(int j=rocks.size()-1; j>=0; j--){
      if (dist((float)rocks.get(j).getCenterX(), (float)rocks.get(j).getCenterY(), (float)gals.get(i).getCenterX(), (float)gals.get(i).getCenterY()) < 20){
        rocks.remove(j);
        gals.remove(i);
        break;
      }
    }
    gals.get(i).show();
    gals.get(i).move();
  }
}

public void keyPressed(){
  if (key == ' '){
    friend.hyperspace();
  }
  
  if (key == 'd'){
    friend.turn(10.0);
  }
  
  if (key == 'a'){
    friend.turn(-10.0);
  }
  
  if (key == 's'){
    friend.accelerate(0.4);
  }
  
  if (key == 'w'){
    gals.add(new Bullet(friend));
  }
}
