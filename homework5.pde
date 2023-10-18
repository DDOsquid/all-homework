PImage img;
float s;

void setup() {
  size(400, 600);
  background(255);
  noStroke();
  img = loadImage("7.png");
}

void draw() {
  background(255);
  s = map(mouseX*0.6+mouseY*0.4, 0, width, 1, 100);
  for (int y = 0; y < height; y+=s ) {
    for (int x = 0; x < width; x+=s) {
      int loc = x + (y * width);
      float bt = brightness(img.pixels[loc]);
      tile(bt, s, x, y);
    }
  }
}

void tile(float bt, float sSize, int X, int Y) {
  int iter = int(map(bt, 0, 255, 3,0));
  if (iter > 0) {
    float interval = sSize/ (iter);
    for (int i = 0; i < iter; i ++) {
      float r = sSize- interval*i;
      noFill();
      stroke(0);
      strokeWeight(1);
      circle(X, Y, r);
    }
  }
}
