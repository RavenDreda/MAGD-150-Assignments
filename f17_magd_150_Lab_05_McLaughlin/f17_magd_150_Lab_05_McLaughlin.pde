float x = 50;
float y = 50;
float w = 400;
float h = 300;

float circleX = 110;
float circleY = 410;
float circleSize = 50;

void setup(){
  size(500, 500);
  background(255);

  
}

void draw(){
  background(80, 40, 40);
  rect(x, y, w, h);
  fill(0);
  if(mousePressed){
  if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
    textSize(50);
    fill(255);
    text("ERROR", 165, 200);
   fill(0, 0, 255);
}
   }


  ellipse(circleX, circleY, circleSize, circleSize);
  
   if(mousePressed){
     if(mouseX >= circleX-circleSize && mouseX <= circleX+circleSize && mouseY >= circleY-circleSize && mouseY <= circleY+circleSize){
       fill(255);
       textSize(32);
       fill(0);
       text("Power On", 75, 100);
       fill(255);
   }
   }
}

/*

float x = 100;
float y = 50;
float w = 150;
float h = 80;
void setup(){
 size(500,500);
 background(255);
 stroke(0);
 noFill();
}

void draw(){
 background(255);
 rect(x,y,w,h);
 fill(255);
 if(mousePressed){
  if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
   println("The mouse is pressed and over the button");
   fill(255);
   //do stuff 
  }
 } 
}

*/