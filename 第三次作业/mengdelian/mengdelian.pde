int colors[]={#F5BEBE,#EEBEF5,#3820A7,#D1A648};
void setup(){
  size(600,600);}
void draw(){
  background(255);
  fill(147);
  rect(60,30,340,187);
  fill(73);
  rect(400,30,55,187);
  rect(457,0,62,27);
  rect(60,375,340,55);
  fill(7);
  rect(401,222,115,148);
  rect(61,0,62,27);
  rect(-5,375,340,55);
  fill(176);
  rect(318,30,81,187);
  rect(401,430,119,94);
  rect(60,430,159,47);
  fill(223);
  rect(521,30,125,187);
  rect(520,2,97,27);
  rect(220,525,300,97);
  strokeWeight(5);
  line(60,0,60,height);
  line(520,0,520,height);
  line(400,0,400,height);
  line(0,30,width,30);
  line(60,375,520,375);
  line(0,430,width,430);
  line(0,524,width,524);
  line(0,477,219,477);
  line(0,218,516,218);
  line(456,1,456,214);
  line(214,0,214,28);
  line(220,432,220,593);
  saveFrame("image.png");
}
