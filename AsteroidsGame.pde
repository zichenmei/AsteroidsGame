Spaceship ship=new Spaceship();
Star[] stars=new Star[200];
ArrayList<Bullet> bullets=new ArrayList<Bullet>();
ArrayList<Asteroid> rocks =new ArrayList<Asteroid>();
public void setup() {
  size(500,500);
  for(int i=0;i<200;i++){
    stars[i]=new Star();
  }
  for(int i=0;i<50;i++){
    rocks.add(new Asteroid());
  }
}
public void draw() {
  background(0);
  for(int i=0;i<200;i++){
    stars[i].show();
  }
  for(int i=0;i<rocks.size();i++){
    rocks.get(i).show();
    rocks.get(i).move();
    if(dist((float)ship.myCenterX,(float)ship.myCenterY,(float)rocks.get(i).getX(),(float)rocks.get(i).getY())<=20){
      rocks.remove(i);
  }
  }
  ship.show();
  ship.move();
  for(int i=0;i<bullets.size();i++){
    bullets.get(i).show();
    bullets.get(i).move();
  }
  for(int i=0;i<bullets.size();i++){
    for(int j=0;j<rocks.size();j++){
      if(dist((float)bullets.get(i).getbX(),(float)bullets.get(i).getbY(),(float)rocks.get(j).getX(),(float)rocks.get(j).getY())<=10){
        rocks.remove(j);
        bullets.remove(i);
        i--;
        j--;
        break;
      }
    }
    }
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
  if(key=='s'){
    bullets.add(new Bullet(ship));
  }
}
