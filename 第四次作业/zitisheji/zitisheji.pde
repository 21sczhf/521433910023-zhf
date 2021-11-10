PFont font;
void setup(){
size(720,120); 
smooth();
font=loadFont("BookmanOldStyle-Bold-48.vlw");
textFont(font);
frameRate(2);}

void draw(){
  background(random(0,255),random(0,255),random(0,255));
  textSize(36);
  float x=random(width);
  fill(map(x,0,width,0,255),map(x,0,width,0,255),100);
  text("How do we do not know requiem",25,60);
  stroke(random(0,255),random(0,255),random(0,255));
  line(25,60,550,60);
  textSize(16);
  text("how do we do not know requiem",27,90);
  line(27,90,260,90);
  saveFrame("frames/####.png");
  
  
}
