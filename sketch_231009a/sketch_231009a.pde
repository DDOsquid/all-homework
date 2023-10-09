int numFrames=8;
PImage []images=new PImage[numFrames];
PGraphics tile;
int i;
float posX;


void setup(){
  size(400,600);
  frameRate(8);
  background(0);
  images[0]=loadImage("1.png");
  images[1]=loadImage("2.png");
  images[2]=loadImage("3.png");
  images[3]=loadImage("4.png");
  images[4]=loadImage("5.png");
  images[5]=loadImage("6.png");
  images[6]=loadImage("7.png");
  images[7]=loadImage("8.png");
  
 
}


void draw(){
  
  
  tile=createGraphics(width,height);
  tile.beginDraw();
  
  tile.fill(0);
  tile.noStroke();
  for(posX=0;posX<width;posX=posX+8){
  tile.rect(posX,0,7,height);
  }
  
  tile.endDraw();
  
 for(i=0;i<8;i++){
  image(images[i],0,0);
  image(tile,0,0,width,height);
 blend(tile,0,0,width,height,0,0,width,height,DARKEST);

}
image(tile,mouseX,mouseY,width,height);

}
