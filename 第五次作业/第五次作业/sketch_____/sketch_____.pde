void setup(){
  size(500,500);
  background(255);
}
void draw(){
  noStroke();
  if(mousePressed) fill(255,0,0);
  else fill(0,255,0);
  ellipse(mouseX,mouseY,50,50);
  if(keyPressed) fill(0,0,255);
  rect(mouseX,mouseY,30,30);
  saveFrame("frames/####.png");
}
