class Enemy {
  PVector pos;
  PVector velocity;
  PVector acceleration;
  float a;
  
  Enemy() {
    pos = new PVector(random(width),-20);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    a = 0;
  }
  
  void display() {
  fill(255);
  stroke(0);
  triangle(pos.x - 10, pos.y, pos.x + 10, pos.y + 5, pos.x, pos.y - 10);
  }
  
  void attracted() {
   PVector mouse = new PVector(mouseX, mouseY);
   PVector attraction = PVector.sub(mouse,pos);
   attraction.setMag(4);
   applyForce(attraction);
   distance(mouse);
  }
  
  void applyForce(PVector force) { 
   acceleration.add(force); 
  }
  
  void update() {
    pos.add(velocity);
    velocity.add(acceleration);
    velocity.limit(10);
    acceleration.mult(0);
}

  void distance(PVector mouse) {
    float d = dist(pos.x,pos.y,mouse.x,mouse.y);
    if (d < 100) {
    float m = map(d,0,99,0,10);
    velocity.setMag(m);
 } 
}
}
