void setup(){
  size(500,550);
  noLoop();
  textAlign(CENTER);
  textSize(25);
}

void draw(){
  background(192);
  int total = 0;
  for(int y = 15; y < 475; y+=60){
    for(int x = 15; x < 475; x+=60){
      Die dice = new Die(x,y);
      dice.show();
      total+=dice.num;
    }
  }
  text("Total:" + " " + total, 250, 525);
}

void mousePressed(){
  redraw();
}

class Die {
  int xPos, yPos, num;
  Die(int x, int y){
    xPos = x;
    yPos = y;
    num = (int)(Math.random()*6) + 1;
  }
  void show(){
    noStroke();
    fill(255,255,255);
    square(xPos, yPos, 50);
    face();
  }
  void face(){
    fill(0);
    if(num == 1){
      ellipse(xPos+25, yPos+25, 10, 10);
    } else if(num == 2){
      ellipse(xPos+13, yPos+13, 10, 10);
      ellipse(xPos+37, yPos+37, 10, 10);
    } else if(num == 3){
      ellipse(xPos+13, yPos+13, 10, 10);
      ellipse(xPos+25, yPos+25, 10, 10);
      ellipse(xPos+37, yPos+37 , 10, 10);
    } else if(num == 4){
      ellipse(xPos+13, yPos+13, 10, 10);
      ellipse(xPos+37, yPos+13, 10, 10);
      ellipse(xPos+13, yPos+37, 10, 10);
      ellipse(xPos+37, yPos+37, 10, 10);
    } else if(num == 5){
      ellipse(xPos+13, yPos+13, 10, 10);
      ellipse(xPos+37, yPos+13, 10, 10);
      ellipse(xPos+25, yPos+25, 10, 10);
      ellipse(xPos+13, yPos+37, 10, 10);
      ellipse(xPos+37, yPos+37, 10, 10);
    } else {
      ellipse(xPos+13, yPos+13, 10, 10);
      ellipse(xPos+37, yPos+13, 10, 10);
      ellipse(xPos+13, yPos+26, 10, 10);
      ellipse(xPos+37, yPos+26, 10, 10);
      ellipse(xPos+13, yPos+39, 10, 10);
      ellipse(xPos+37, yPos+39, 10, 10);
    }
  }
}
