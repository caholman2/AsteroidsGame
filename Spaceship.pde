class Spaceship extends Floater  
{   
  
  Spaceship(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = 255;
    myCenterX = 400;
    myCenterY = 400;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void hyperspace(){
    myPointDirection = Math.random()*360;
    myCenterX = Math.random()*700+50;
    myCenterY = Math.random()*700+50;
    myXspeed = myYspeed = 0;
    
  }
  
  public void setXspeed(int x){
    myXspeed = x;
  }
  public void setYspeed(int y){
    myYspeed = y;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  
}
