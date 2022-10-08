void setup()
{
  size(500,500);
  noLoop();
  background(#2c8257);
  textAlign(CENTER, CENTER);
  textSize(30);
}

int sum = 0;

Card test; 

void draw()
{
  background(#2c8257);
  for(int y = 85; y < 500; y += 166){
    for(int x = 85; x < 500; x += 166){
      Card test = new Card(x,y);
      test.show();
    } // x loop
  } // y loop
  fill(255);
  text("Sum: " + sum, 250,20);
}


void mousePressed()
{
  sum = 0;
  redraw();
}

class Card //models one single card
{
  int myX, myY, face, suit;
  
  Card(int x, int y) //constructor
  {
    flip();
    suit = (int)(Math.random()*4);
    myX = x;
    myY = y;
  }
  void flip()
  {
    face = (int)(Math.random()*13)+1;
    if(face >= 10)
      sum += 10;
    else
      sum += face;
  }
  void show()
  {
    textSize(20);
    if(suit == 0){ // spade
      fill(240);
      noStroke();
      rect(myX-33,myY-45,65,90);
      fill(0);
      beginShape();
        curveVertex(myX,myY+10);
        curveVertex(myX,myY+10);
        curveVertex(myX-7,myY+15);
        curveVertex(myX-13,myY+5);
        curveVertex(myX,myY-10);
        curveVertex(myX+13,myY+5);
        curveVertex(myX+7,myY+15);
        curveVertex(myX,myY+10);
        curveVertex(myX,myY+10);
       endShape();
    }
      triangle(myX,myY+10,myX+5,myY+20,myX-5,myY+20);
    if(suit == 1){ // heart
      fill(240);
      noStroke();
      rect(myX-33,myY-45,65,90);
      fill(255,0,0);
      beginShape();
        curveVertex(myX,myY-5);
        curveVertex(myX,myY-5);
        curveVertex(myX-7,myY-10);
        curveVertex(myX-13,myY);
        curveVertex(myX,myY+15);
        curveVertex(myX+13,myY);
        curveVertex(myX+7,myY-10);
        curveVertex(myX,myY-5);
        curveVertex(myX,myY-5);
      endShape();
    }
    if(suit == 2){ // club
      fill(240);
      noStroke();
      rect(myX-33,myY-45,65,90);
      fill(0);
      ellipse(myX-7,myY+2,15,15);
      ellipse(myX,myY-7,15,15);
      ellipse(myX+7,myY+2,15,15);
      triangle(myX,myY+7,myX+5,myY+17,myX-5,myY+17);
    }
    if(suit == 3){ // diamond
      fill(240);
      noStroke();
      rect(myX-33,myY-45,65,90);
      fill(255,0,0);
      beginShape();
        vertex(myX,myY-14);
        vertex(myX-8,myY);
        vertex(myX,myY+14);
        vertex(myX+8,myY);
      endShape();
    }
    if(face == 1){
      text("A", myX-21, myY-30);
      text("A", myX+22, myY+30);
    }
    if(face == 2){
      text("2", myX-22, myY-30);
      text("2", myX+23, myY+30);
    }
    if(face == 3){
      text("3", myX-22, myY-30);
      text("3", myX+23, myY+30);
    }
    if(face == 4){
      text("4", myX-22, myY-30);
      text("4", myX+22, myY+30);
    }
    if(face == 5){
      text("5", myX-22, myY-30);
      text("5", myX+22, myY+30);
    }
    if(face == 6){
      text("6", myX-22, myY-30);
      text("6", myX+22, myY+30);
    }
    if(face == 7){
      text("7", myX-22, myY-30);
      text("7", myX+22, myY+30);
    }
    if(face == 8){
      text("8", myX-22, myY-30);
      text("8", myX+22, myY+30);
    }
    if(face == 9){
      text("9", myX-22, myY-30);
      text("9", myX+22, myY+30);
    }
    if(face == 10){
      text("10", myX-18, myY-30);
      text("10", myX+17, myY+33);
    }
    if(face == 11){ // jack
      text("J", myX-22, myY-30);
      text("J", myX+23, myY+30);
    }
    if(face == 12){ // queen
      text("Q", myX-22, myY-30);
      text("Q", myX+22, myY+30);
    }
    if(face == 13){ // king
      text("K", myX-22, myY-30);
      text("K", myX+23, myY+30);
    }
  }
}


