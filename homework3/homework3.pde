PGraphics a;
PGraphics b;
color[]CL={#FFFFFF, #F5001D, #0F00F5};
color[]colors={CL[0], CL[2], CL[0], CL[1], CL[0]};

void setup() {
  size(720, 720);
  imageMode(CENTER);
  frameRate(3);
}

void draw() {
  background(#0F00F5);

  int m=int(random(5,10));
  float s=width/m;

  int n=colors.length;
  float r=s/n;

  a=createGraphics((int)s, (int)s);
  a.beginDraw();
  a.noStroke();
  for (int i=n-1; i>0; i--) {
    a.fill(color(colors[i]));
    a.square(0, 0, i*r);
  }
  a.endDraw();


  b=createGraphics((int)s, (int)s);
  b.beginDraw();
  b.noStroke();
  b.translate((int)s, (int)s);
  b.rotate(PI);
  for (int i=n-1; i>0; i--) {
    b.fill(color(colors[i]));
    b.square(0, 0, i*r);
  }

  b.endDraw();

  for (float x=s/2; x<width; x+=s) {
    for (float y=s/2; y<height; y+=s) {
      push();
      translate(x, y);

      int angle=int(random(4));
      if(angle==0)rotate(0);
      if(angle==1)rotate(PI/2);
      if(angle==2)rotate(PI);
      if(angle==3)rotate(-PI/2);
      

      image(a, 0, 0);
      image(b, 0, 0);
      pop();
    }
  }
}
