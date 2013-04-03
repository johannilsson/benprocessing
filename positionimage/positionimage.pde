// inflatable head

PImage room;
PImage head;

void setup() {
  size(488, 486);
  
  room = loadImage("teachingscene.png");
  head = loadImage("head.png");
}

void draw() {
  background(102);
  
  imageMode(CORNER);
  image(room,0,0);
  
  imageMode(CENTER);
  image(head,mouseX,mouseY);
}

void mousePressed() {

  println(mouseX + " " + mouseY);
}
