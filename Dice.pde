void setup()
{
  size(500,500);
  noLoop();
  textAlign(CENTER, CENTER);
  textSize(30);
}

Die test; 
int sum = 0;

void draw()
{
  background(150);
  for(int y = 85; y < 500; y += 166){
    for(int x = 85; x < 500; x += 166){
      Die test = new Die(x,y);
      test.show();
    } // x loop
  } // y loop
  text("Sum: " + sum, 250,20);
}

void mousePressed()
{
  sum = 0;
  redraw();
}

class Die //models one single dice cube
{
  int myX, myY, face;
  
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    face = (int)(Math.random()*6)+1;
    sum += face;
  }
  void show()
  {
    fill(240);
    rect(myX-33,myY-33,65,65);
    fill(0);
    if(face == 1)
      ellipse(myX,myY,15,15);
    if(face == 2){
      ellipse(myX+19,myY-19,15,15);
      ellipse(myX-19,myY+19,15,15);
    }
    if(face == 3){
      ellipse(myX+19,myY-19,15,15);
      ellipse(myX-19,myY+19,15,15);
      ellipse(myX,myY,15,15);
    }
    if(face == 4){
      ellipse(myX+19,myY-19,15,15);
      ellipse(myX-19,myY+19,15,15);
      ellipse(myX+19,myY+19,15,15);
      ellipse(myX-19,myY-19,15,15);
    }
    if(face == 5){
      ellipse(myX+19,myY-19,15,15);
      ellipse(myX-19,myY+19,15,15);
      ellipse(myX+19,myY+19,15,15);
      ellipse(myX-19,myY-19,15,15);
      ellipse(myX,myY,15,15);
    }
    if(face == 6){
      ellipse(myX+19,myY-19,15,15);
      ellipse(myX-19,myY+19,15,15);
      ellipse(myX+19,myY+19,15,15);
      ellipse(myX-19,myY-19,15,15);
      ellipse(myX-19,myY,15,15);
      ellipse(myX+19,myY,15,15);
    }
  }
}
