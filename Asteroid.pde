class Asteroid extends Floater
{
  protected double myRotSpeed;
  
  Asteroid(){
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    xCorners[0] = (int) (Math.random()*21)-10; //0
    yCorners[0] = -40;
    
    xCorners[1] = (int) (Math.random()*21)-40; //-30
    yCorners[1] = -25;
    
    xCorners[2] = (int) (Math.random()*21)-60; //-50
    yCorners[2] = 0;
    
    xCorners[3] = (int) (Math.random()*21)-40; //-30
    yCorners[3] = 25;
    
    xCorners[4] = (int) (Math.random()*21)-10; //0
    yCorners[4] = 40;
    
    xCorners[5] = (int) (Math.random()*21)+20; //30
    yCorners[5] = 25;
    
    xCorners[6] = (int) (Math.random()*21)+40; //50
    yCorners[6] = 0;
    
    xCorners[7] = (int) (Math.random()*21)+20; //30
    yCorners[7] = -25;
    
    myColor = 100;
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;
    myXspeed = Math.random()*7-3;
    myYspeed = Math.random()*7-3;
    myPointDirection = Math.random()*6;
    myRotSpeed = Math.random()*6;
  }
  
  public void move() {
    turn(myRotSpeed);
    super.move();
  }
  
  public void show() {
    fill(100,100,100,84);   
    strokeWeight(5);
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  
}
