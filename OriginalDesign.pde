int numbersclicked = 0;


void setup(){
  size(500,500);
  text("Click anywhere to start!" , 25, 25);
  text("Create your own DeadPool!" , 25, 50);
}

void draw() {
}

void mouseClicked() { 
      
  if(numbersclicked == 0){
     background(256,0,0);
     drawFace();
     numbersclicked++;
  }else if(numbersclicked == 1){
    drawEyes();
    numbersclicked++;
  }else if(numbersclicked == 2){
    drawMouth();
    numbersclicked = 0;
    
  }  
}
void drawEyes() {
  fill(0,0,0);
  ellipse(mouseX + 85,mouseY,75,200);
  fill(256,256,256);
  ellipse(mouseX + 85,mouseY+25,50,50);
  
  fill(0,0,0);
  ellipse(mouseX - 85,mouseY,75,200);
  fill(256,256,256);
  ellipse(mouseX - 85,mouseY+25,50,50);
}

void drawFace() {
  noFill();
  ellipse(mouseX,mouseY, 350, 500);
}

void drawMouth(){
  fill(0,0,0);
  ellipse(mouseX,mouseY, 100,50);
}
