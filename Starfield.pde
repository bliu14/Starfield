Particle[] parts = new Particle[100];
void setup()
{
  size(500, 500);
  background(0);
  parts[0] = new OddballParticle();
  for (int i = 1; i < parts.length; i++) {
    parts[i] = new Particle();
  }
}
void draw()
{
  for (int i = 0; i< parts.length; i++) {
    parts[i].move();
    parts[i].show();
  }
}
class Particle
{
  float x, y, d, v;
  int clr;
  public Particle() {
    x = 250;
    y = 250;
    d = random(0, 180);
    v = random(0, 10);
    clr = color(random(225), random(225), random(225));
  }
  public void move() {
    y += sin(d)*v;
    x += cos(d)*v;
  }
  public void show() {
    fill(clr);
    ellipse(x, y, 10, 10);
  }
}

class OddballParticle extends Particle
{
  public void show() {
    fill(clr);
    ellipse(x, y, 50, 50);
  }
  public void move() {
    fill(clr);
    x+= 10;
    if (x > 400) {
      y -= 10;
    }
  }
}
