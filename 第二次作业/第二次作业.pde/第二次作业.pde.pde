int c;
void setup()
{
  size(600,600);
  frameRate(10);}
  
void draw(){
  background(mouseX/5,mouseY/5,50);
  fill(random(0,255),random(0,255),random(0,255));
  strokeWeight(5);
  stroke(random(0,255),random(0,255),random(0,255));
  ellipse(random(0,600),random(0,600),50,50);
  rect(random(0,600),random(0,600),30,30);
  saveFrame("frames/####.png");
}
