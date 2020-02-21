Enemy enemy;



void setup() {
  size(600,600);
  enemy = new Enemy();
}

void draw() {
  background(150);
  enemy.display();
  enemy.attracted();
  enemy.update();
}
