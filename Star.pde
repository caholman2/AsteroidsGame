class Star
{
  private int myX, myY, mySize, myR, myG, myB;
  Star()
  {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    mySize = (int)(Math.random()*7+2);
    myR = (int)(Math.random()*155+100);
    myG = (int)(Math.random()*155+100);
    myB = (int)(Math.random()*155+100);
  }
  
  public void show()
  {
    fill(myR, myG, myB);
    noStroke();
    ellipse(myX, myY, mySize, mySize);
  }
}
