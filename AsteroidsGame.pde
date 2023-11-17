Spaceship ship=new Spaceship();;
Star[] stars=new Star[200];
public void setup() {
  size(500,500);
  for(int i=0;i<200;i++){
    stars[i]=new Star();
  }
}
public void draw() {
  background(0);
  for(int i=0;i<200;i++){
    stars[i].show();
  }
  ship.show();
  ship.move();
}
public void keyPressed(){
  if(key=='1'){
    ship.accelerate(.1);
  }
  if(key=='2'){
    ship.turn(5);
  }
  if(key=='3'){
    ship.accelerate(-.1);
  }
  if(key==' '){
    ship.setCenterXY();
    ship.setXYSpeed(0);
    ship.setDirection();
  }
}
