float angle;
float noiseValue;
float strength=0.005;
int maxSize=3000;

ArrayList<Particle>particles=new ArrayList<Particle>();

boolean savePDF;


void setup(){
  colorMode(HSB);
  
  size(800,800);
  background(255);
  
}

void draw(){
  //loadPixels();
  //for(int y=0;y<height;y++){
    //for(int x=0;x<width;x++){
      //noiseValue=noise(x*strength,y*strength);
      //color toFill=color(noiseValue*255);
      //pixels[x+y*width]=toFill;
      
    //}
  //}
   //updatePixels();
   
   if(particles.size()<maxSize)
   for(int i=0;i<maxSize/100;i++)
 particles.add(new Particle(random(width),random(height)));
   
   for(Particle p:particles)
   p.update();
   if(savePDF){
     beginRecord(PDF,"HOMEWORK.PDF");
   }
   if (savePDF){
     endRecord();
     savePDF=false;
   }
   
   
}

void keyPressed(){
  if(key=='q')savePDF=true;  
}

class Particle{
 PVector pos;
 PVector vel;
 
 Particle(float x,float y){
   pos=new PVector(x,y);
   vel=new PVector(0,0);
   
}
 void update(){
   noiseValue=noise(pos.x*strength,pos.y*strength);
   vel=PVector.fromAngle(noiseValue*TWO_PI*3);
   pos.add(vel);
   display();
 }
 
 void display(){
   fill(int(random(0,(noiseValue*255*1)%255)),100,230,100);
   noStroke();
   circle(pos.x,pos.y,1);
}
}
