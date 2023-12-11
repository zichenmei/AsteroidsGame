class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX=theShip.getCenterX();
    myCenterY=theShip.getCenterY(); 
    myXspeed=theShip.getXSpeed(); 
    myYspeed=theShip.getYSpeed();
    myPointDirection=theShip.getDirection();
    accelerate(6.0);
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,(float)10,(float)10);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
  }
}
