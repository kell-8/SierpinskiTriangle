public float value = 20;
public void setup() {
  background(0);
  size(400, 400);
}

public void draw() {
  sierpinski(0, 400, 400);
}

public void keyPressed() { //optional
  background(0);
  if (value > 300){
    value = 20;
  } else {
    value = value*2;
  }
}

public void sierpinski(int x, int y, int len) {
  if (len <= value) {
    fill(255 - (int)(Math.random()*100), 255 - (int)(Math.random()*100), 255 - (int)(Math.random()*100));
    triangle(x, y, x+len, y, x+len/2, y-len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
