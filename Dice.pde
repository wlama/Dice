int total = 0;
int num1s = 0;
int num2s = 0;
int num3s = 0;
int num4s = 0;
int num5s = 0;
int num6s = 0;
void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
  clear();
  for(int y = 30; y <= 190; y += 70) {
    for(int x = 35; x <= 380; x += 70) {
      Die die = new Die(x, y);
      die.show();
    }
  }
  fill(255, 255, 255);
  text("total: " + total, 250, 300);
  text("number of 1s: " + num1s, 50, 260);
  text("number of 2s: " + num2s, 50, 280);
  text("number of 3s: " + num3s, 50, 300);
  text("number of 4s: " + num4s, 50, 320);
  text("number of 5s: " + num5s, 50, 340);
  text("number of 6s: " + num6s, 50, 360);
}
void mousePressed()
{
  redraw();
  total = 0;
  num1s = 0;
  num2s = 0;
  num3s = 0;
  num4s = 0;
  num5s = 0;
  num6s = 0;
}
class Die //models one single dice cube
{
  int myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill(21,120,182);
    noStroke();
    rect(myX, myY, 50, 50, 10);
    if(Math.random() < .16) {
      fill(5,104,85);
      ellipse(myX + 25, myY + 25, 10, 10);
      total++;
      num1s++;
    } else if(Math.random() < .32) {
      fill(139,88,127);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      total += 2;
      num2s++;
    } else if(Math.random() < .48) {
      fill(25,53,67);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      total += 3;
      num3s++;
    } else if(Math.random() < .64) {
      fill(82, 183, 71);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      total += 4;
      num4s++;
    } else if(Math.random() < .80) {
      fill(111,146,191);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      total += 5;
      num5s++;
    } else {
      fill(56,34,97);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
      total += 6;
      num6s++;
    }
  }
}