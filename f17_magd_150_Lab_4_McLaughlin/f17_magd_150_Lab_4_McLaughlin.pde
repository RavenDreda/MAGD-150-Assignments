boolean button = false;
float y=100;

void setup(){
  surface.setResizable(true);
  size(500, 500);
  colorMode(HSB, 359, 100, 100, 100);
  background(12, 83, 73, 100);
  y = height/0.5;
 
}

void draw(){
  background(12, 83, 73, 100);
  
    ellipse(50, y, 60, 60);
    ellipse(200, y+160, 90, 90);
    ellipse(400, y+400, 50, 50);
    ellipse(300, y+500, 80, 80);
    ellipse(75, y+350, 70, 70);
    ellipse(250, y+1000, 80, 80);
    ellipse(400, y+700, 60, 60);
    ellipse(100, y+1300, 70, 70);
    ellipse(150, y+1100, 40, 40);
    ellipse(300, 900, 60, 60);
    
  y=y-5;
  while(y<-1500){
    y=height;
  }
  
  fill(41, 94, 87, 100);
  triangle(mouseX-100, mouseY+50, mouseX+100, mouseY+50, mouseX, mouseY-200);
  fill(28, 95, 46, 100);
  rect(mouseX-100, mouseY+50, 200, 30);
  fill(0);
  ellipse(mouseX-30, mouseY+20, 20, 20);
  ellipse(mouseX+40, mouseY-20, 20, 20);
  ellipse(mouseX, mouseY-120, 20, 20);
  
  if(button){
  fill(41, 94, 87, 100);
  triangle(mouseX-100, mouseY+50, mouseX+100, mouseY+50, mouseX, mouseY-200);
  fill(28, 95, 46, 100);
  rect(mouseX-100, mouseY+50, 200, 30);
  fill(0, 76, 69, 100);
  ellipse(mouseX-35, mouseY+10, 40, 40);
  ellipse(mouseX+20, mouseY-20, 40, 40);
  ellipse(mouseX, mouseY-100, 40, 40);
  } else {
  fill(41, 94, 87, 100);
  triangle(mouseX-100, mouseY+50, mouseX+100, mouseY+50, mouseX, mouseY-200);
  fill(28, 95, 46, 100);
  rect(mouseX-100, mouseY+50, 200, 30);
  fill(0);
  ellipse(mouseX-30, mouseY+20, 20, 20);
  ellipse(mouseX+40, mouseY-20, 20, 20);
  ellipse(mouseX, mouseY-120, 20, 20);
  }
  

  if(button){
    println("Do you like pepperoni?");
  } else {
    println("Do you like black olives?");
  }
  


}


void mousePressed(){
  button = !button;
}

void keyPressed(){
  if(keyPressed){
  fill(41, 29,65, 100);
  noStroke();
  ellipse(mouseX-30, mouseY-20, 45, 30);
  rect(mouseX-40, mouseY-10, 20, 20);
  ellipse(mouseX+10, mouseY-50, 45, 30);
  rect(mouseX, mouseY-80, 20, 20);
  } else {
}
}