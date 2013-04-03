/**
 * Scale Shape.  
 * Illustration by George Brower. 
 * 
 * Move the mouse left and right to zoom the SVG file.
 * This shows how, unlike an imported image, the lines
 * remain smooth at any size.
 *
 * I modified the bot svg to put the mouth and body on layers called 
 * mouth and body. then can draw them independently.
 *
 */

PShape bot;
PShape body;
PShape mouth;

void setup() {
  size(640, 360);
  smooth();
  // The file "bot1.svg" must be in the data folder
  // of the current sketch to load successfully
  bot = loadShape("bot1.svg");
  body = bot.getChild("body");
  mouth = bot.getChild("teeth");
  shapeMode(CENTER);
} 

void draw() {
  background(102);
  translate(width/2, height/2);
  shape(body, 0, 0);
  float zoom = map(mouseX, 0, width, 0.1, 4.5);
  scale(zoom);
  shape(mouth, 0, 0);
}
