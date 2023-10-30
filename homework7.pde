
int num=1;
float posX, posY;
color [] CL1={#7C5252, #52547C, #867865};
color [] colors1={CL1[1], CL1[2], CL1[0]};
color [] CL2={#D1D2FF, #FFD1D9, #FCEA17};
color [] colors2={CL2[1], CL2[2], CL2[0]};



void text() {
  textSize(20);
  String [] TEXTS={"I CAN", "I CANNOT", "TO BE", "NOT TO BE"};


  for (int i=0; i<4; i++) {
    posX=random(0, width);
    posY=random(0, height);

    int l=TEXTS[i].charAt(i);
    //print( l);
    rectMode(CENTER);
    strokeWeight(2);
    stroke(0);
    rect(posX, posY, l*textWidth(TEXTS[i])/10, 50);
    fill(color(colors2[int(random(0, 3))]));

    textMode(CENTER);
    text(TEXTS[i], posX-textWidth(TEXTS[i])/2, posY);
    fill(color(colors1[int(random(0, 3))]));
  }
}




void setup() {
  size(720, 960);
  background(38);
}

void draw() {
  frameRate(5);
  for (int j=0; j<num; j++) {
    text();
  }
  if(mousePressed){
   stop();
   
  }
    
}
