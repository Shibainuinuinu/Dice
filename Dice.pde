int sumCount = 0;
void setup()
  {
    background(#5175DE);
    size(500,500);
    noLoop();
  }
  void draw()
  {
     for( int myY = 20; myY<=400; myY+=50){
       for (int myX = 30; myX<=450; myX+=50){
          Die bob = new Die(myX, myY);
          bob.show();
          bob.roll();
       }
     }
  }
  void mousePressed()
  {
    sumCount = 0;
    redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY, diceNumber;

      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
        diceNumber = (int)(Math.random()*6) + 1;
      }
      void show()
      {
        stroke(0);
        sumCount = sumCount + diceNumber;
        fill(255);
        rect(myX, myY, 40, 40, 5);
        fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256) );
          if (diceNumber == 1){
            ellipse(myX+20, myY+20, 5, 5);
          }
          else if (diceNumber == 2){
            ellipse(myX+30, myY+10, 5, 5);
            ellipse(myX+10, myY+30, 5, 5);
          }
          else if(diceNumber == 3){
            ellipse(myX+30, myY+10, 5, 5);
            ellipse(myX+20, myY+20, 5, 5);
            ellipse(myX+10, myY+30, 5, 5);
          }
          else if (diceNumber == 4){
            ellipse(myX+10, myY+10, 5, 5);
            ellipse(myX+10, myY+30, 5, 5);
            ellipse(myX+30, myY+10, 5, 5);
            ellipse(myX+30, myY+30, 5, 5);
          }
          else if (diceNumber == 5){
            ellipse(myX+20, myY+20, 5, 5);
            ellipse(myX+10, myY+10, 5, 5);
            ellipse(myX+10, myY+30, 5, 5);
            ellipse(myX+30, myY+10, 5, 5);
            ellipse(myX+30, myY+30, 5, 5);
          }
          else {
            ellipse(myX+10, myY+10, 5, 5);
            ellipse(myX+10, myY+20, 5, 5);
            ellipse(myX+10, myY+30, 5, 5);
            ellipse(myX+30, myY+10, 5, 5);
            ellipse(myX+30, myY+20, 5, 5);
            ellipse(myX+30, myY+30, 5, 5);
          }
        fill(#5175DE);
        noStroke();
        rect(200, 460, 90, 20);
        fill(255);
        text("The Sum Is: " + sumCount, 200, 470);
      }
  }
