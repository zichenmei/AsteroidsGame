class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed=(double)(Math.random()*8)-4;
    corners=8;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]=3;
    yCorners[0]=6;
    xCorners[1]=6;
    yCorners[1]=3;
    xCorners[2]=3;
    yCorners[2]=-6;
    xCorners[3]=3;
    yCorners[3]=-6;
    xCorners[4]=-3;
    yCorners[4]=-6;
    xCorners[5]=-6;
    yCorners[5]=-3;
    xCorners[6]=-6;
    yCorners[6]=3;
    xCorners[7]=-3;
    yCorners[7]=6;
    myCenterX=(double)(Math.random()*500);
    myCenterY=(double)(Math.random()*500); 
    myColor=160;
    myXspeed=(double)(Math.random()*6)-3; 
    myYspeed=(double)(Math.random()*6)-3;
    myPointDirection=(double)0;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
