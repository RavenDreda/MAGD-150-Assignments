Balloon[] balloons = new Balloon[10]; // Adding in a Balloon class

void setup(){
  size(500, 500);
  background(80, 80, 255);
  for(int i = 0; i < balloons.length; i++){
    balloons[i] = new Balloon();
  }
  
  
}


void draw(){
  background(80, 80, 255);
    fill(30, 200, 30);
    rect(0, 300, 500, 200);          //Making the ground
    println (mouseX, mouseY);
    fill(80, 50, 50);
    rect(200, 230, 75, 90);         //starting to make the booths and the inner 
    fill(60, 30, 30);               //shapes that give esome additional depth
    rect(210, 240, 55, 50);
    
    fill(80, 50, 50);
    beginShape();
    vertex(320, 220);
    vertex(400, 200);
    vertex(420, 220);
    vertex(420, 335);
    vertex(400, 355);
    vertex(320, 335);
    endShape(CLOSE);
    
    fill(60, 30, 30);
    beginShape();
    vertex(330, 230);
    vertex(390, 215);
    vertex(390, 310);
    vertex(330, 300);
    endShape(CLOSE);
    
    fill(80, 50, 50);
    beginShape();
    vertex(430, 200);
    vertex(440, 180);
    vertex(500, 180);
    vertex(500, 460);
    vertex(440, 460);
    vertex(430, 440);
    endShape(CLOSE);
    
    fill(60, 30, 30);
    beginShape();
    vertex(435, 200);
    vertex(437, 195);
    vertex(437, 345);
    vertex(435, 340);
    endShape(CLOSE);

    fill(100, 100, 60);
    rect(203, 295, 70, 20);
    textSize(14);
    fill(255);
    text("Darts!", 220, 310);     //Adding in a label for one booth
    
    fill(60, 30, 30);
    rect(90, 140, 230, 50);
    rect(100, 120, 10, 190);
    rect(300, 120, 10, 190);
    
    
    fill(255);
    textSize(16);
    text("WELCOME TO", 135, 160);       //Making the wording on my sign 
    text("THE CARNIVAL!", 155, 180);
    
    noStroke();
    fill(255, 180);
    ellipse(50, 30, 150, 100);          // Making some clouds and using the translate
    ellipse(500, 30, 150, 100);         // and other transformations to alter the 
    ellipse(100, 50, 150, 100);         // appearance of the clouds.
   ellipse(400, 40, 150, 100);
    ellipse(200, 30, 150, 100);
    translate(50, 20);
    ellipse(200, 30, 150, 100);
    scale(1.25);
    ellipse(200, 30, 150, 100);
    rotate(50);
    ellipse(200, 30, 150, 100);


    scale(.5);
    translate(0, -10);
    rotate(-50);
      for (int i = 0; i < balloons.length; i++) {  //calling the functions of the 
    balloons[i].update();                          //balloon class
    balloons[i].display(); 
    

  }

  
}