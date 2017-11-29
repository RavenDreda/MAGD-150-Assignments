class Balloon{
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float topspeed;
 
 Balloon(){
   
  position = new PVector(random(width),random(height));
  velocity = new PVector(0, 0);
  topspeed = 2;
 }
 
 void update(){
   
   PVector mouse = new PVector(mouseX, mouseY-50);
   acceleration = PVector.sub(mouse, position);
   acceleration.normalize();
   acceleration.mult(0.08);
   
   velocity.add(acceleration);
   velocity.limit(topspeed);
   position.add(velocity);
   
 }
  
  
  void display(){
    stroke(0);
    
    fill(255, 30, 30);
    ellipse(position.x, position.y, 60, 65);
    ellipse(position.x, position.y+36, 20, 10);
    
  }
  
}