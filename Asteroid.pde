class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed=(double)(Math.random()*8)-4;
    corners=8;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]=5;
    yCorners[0]=8;
    xCorners[1]=8;
    yCorners[1]=5;
    xCorners[2]=5;
    yCorners[2]=-8;
    xCorners[3]=5;
    yCorners[3]=-8;
    xCorners[4]=-5;
    yCorners[4]=-8;
    xCorners[5]=-8;
    yCorners[5]=-5;
    xCorners[6]=-8;
    yCorners[6]=5;
    xCorners[7]=-5;
    yCorners[7]=8;
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
