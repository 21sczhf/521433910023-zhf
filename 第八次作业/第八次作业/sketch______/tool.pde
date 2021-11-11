int MAXN = 200;
boolean debug = false;
float mutationRatio = 0.1;
float reproduceRatio = 0.0005;

ArrayList<PVector> food = new ArrayList<PVector>();
ArrayList<PVector> poison = new ArrayList<PVector>();
ArrayList<Vehical> vehs = new ArrayList<Vehical>();

void setup() {
  size(1200, 600, P2D);
  //veh = new Vehical(random(width), random(height));
  for (int i = 0; i < MAXN; ++i) {
    food.add(new PVector(random(width), random(height)));
    if (i%2 == 0) {
      poison.add(new PVector(random(width), random(height)));
    } 
    if (i%3 == 0) {
      float[] dna = new float[4];
      dna[0] = random(1);
      dna[1] = random(-1, 0);
      dna[2] = random(27,270);
      dna[3] = random(27,260);
      vehs.add(new Vehical(random(width), random(height), dna));
    }
  }
}

void draw() {
  background(0);
  for (int i = vehs.size() - 1; i >= 0; --i) {
    Vehical veh = vehs.get(i);
    veh.seek(veh.eat(food, 0.05, veh.dna[2]), veh.dna[0]);
    veh.seek(veh.eat(poison, -0.3, veh.dna[3]), veh.dna[1]);
    veh.update();
    veh.bound();
    veh.display();
    if (random(1) < reproduceRatio)
      veh.reproduce();
  }

  noStroke();
  for (PVector p : food) {
    fill(0,0,255);
    rect(p.x, p.y, 5, 5);
  }
  for (PVector p : poison) {
    fill(237,242,105);
    rect(p.x, p.y, 5, 5);
  }

  if (random(1) < 0.05) {
    if (food.size() < MAXN / 2)
      food.add(new PVector(random(width), random(height)));
  }

  String t = "Population: " + vehs.size();
  fill(255);
  textSize(20);
  text(t, 50, 60);
  saveFrame("frames/####.png");
}

void mousePressed() {
  debug = !debug;
}
