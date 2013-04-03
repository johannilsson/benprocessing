// inflatable head

PImage room;
PImage head;

float airpressure;

void setup() {
  size(488, 486);
  
  room = loadImage("teachingscene.png");
  head = loadImage("head.png");
  airpressure = 1;
}

void draw() {
  airpressure = constrain(airpressure - 0.001, 1, 3);
  
  background(102);
  
  imageMode(CORNER);
  image(room,0,0);
  
  translate(313,257);
  scale(airpressure);
  
  imageMode(CENTER);
  image(head,0,0);
}

void keyPressed() {
  airpressure = constrain(airpressure + 0.1, 1, 3);
}
