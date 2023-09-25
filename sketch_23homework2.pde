int diameter=512;
float endSize=80;
float endOffset=174;
float tileWidth;
float tileHeight;


int tileCountX=3;
int tileCountY=3;

void setup()
{
  size(1024, 1024);

  noFill();
  stroke(255);
  strokeWeight(3);

  tileWidth=width/tileCountX;
  tileHeight=height/tileCountY;
}

void draw()
{
  background(0);

  endSize=map(mouseX, 0, max(height, mouseX), tileWidth/2, 0);
  endOffset=map(mouseY, 0, max(width, mouseY), 0, (tileWidth-endSize)/2);
  float circleCount=mouseX/100+1;

  for (int gridX=0; gridX<=tileCountX; gridX++)
  {
    for (int gridY=0; gridY<=tileCountY; gridY++)
    {
      push();

      translate(tileWidth*gridX, tileHeight*gridY);
      for (int i=0; i<circleCount; i++)
      {

        float diameter=map(i, 0, circleCount, tileWidth, endSize);
        float offiset=map(i, 0, circleCount, 0, endOffset);

        circle(offiset, 0, diameter);
      }
      pop();
    }
  }
}
