class Spaceship extends Floater {
  public Spaceship() {
    corners=3;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]=8;
    yCorners[0]=0;
    xCorners[1]=-25;
    yCorners[1]=-10;
    xCorners[2]=-25;
    yCorners[2]=10;
    myCenterX=(double)250;
    myCenterY=(double)250; 
    myColor=255;
    myXspeed=(double)0; 
    myYspeed=(double)0;
    myPointDirection=(double)0;
  }
  public void setCenterXY() {
    myCenterX=(double)(Math.random()*500);
    myCenterY=(double)(Math.random()*500);
  }
  public void setXYSpeed(double num) {
    myXspeed=num; 
    myYspeed=num;
  }
  public void setDirection(){
    myPointDirection=(double)(Math.random()*(2*PI));
  }
}
