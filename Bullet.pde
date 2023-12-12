class Bullet extends Floater
{
  Bullet(Spaceship theShip){
    corners = 0;
    xCorners = new int[corners];
    yCorners = new int[corners];
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    myColor = 255;
    accelerate(7.0);
  }
  
  public void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 6, 6);
  }
  
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  
}
