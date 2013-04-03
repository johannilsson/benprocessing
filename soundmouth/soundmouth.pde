// sound mouth

import ddf.minim.*;

Minim minim;
AudioInput in;
float mouthopen = 10;

void setup()
{
  size(640, 360);
  smooth();

  minim = new Minim(this);
  
  // get a line in from Minim, default bit depth is 16
  in = minim.getLineIn(Minim.STEREO, 512);
}

void draw()
{
  background(102);
  stroke(255,200,200);
  strokeWeight(4);
  fill(0);

  float volume = abs(in.left.get(0) ) * 200;
  float step = (volume - mouthopen)/10;
  mouthopen = mouthopen + step;
  
  ellipse(width/2, height/2, 50, constrain(mouthopen,3,100));
}


void stop()
{
  // always close Minim audio classes when you are done with them
  in.close();
  minim.stop();
  
  super.stop();
}
