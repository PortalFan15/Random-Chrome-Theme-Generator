float dx;
float dy;
float m = 10;
void setup() {
  size(800, 600);
  background(0);
  noStroke();
  rectMode(CENTER);
  frameRate(1000);
  dx = 5;
  dy = 5;
}
void draw() {
  fill(0, random(100, 255), random(100, 255));
  square(dx, dy, 10);
  dx = dx+m;
  if (dx >= 800) {
    m = 0;
    dy = dy+10;
    dx = 5;
    m = 10;
  }
}
void mousePressed() {
  save("Chrome_NTP_Background_Cool.png");
}
