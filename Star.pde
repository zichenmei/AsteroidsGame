class Star{
  private int myX,myY,color1,color2,color3;
  public Star(){
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
    color1=(int)(Math.random()*255);
    color2=(int)(Math.random()*255);
    color3=(int)(Math.random()*255);
  }
  public void show(){
    stroke(0);
    fill(color1,color2,color3);
    ellipse(myX,myY,5,5);
  }
}
