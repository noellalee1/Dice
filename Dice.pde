Dice die;

void setup()
  {
    size (400,500);
    noLoop();
  }
 
  void draw()
  {
    background (255);
    //your code here
   int rollCount = 0;
  int j = 0;
   while (j<400){
      int i = 0;
     while (i<400) {
        die = new Dice (i, j, 40);
        die.roll();
        die.show();
        i+=40;
        rollCount = die.num + rollCount;
     }
     j +=40;

   }
   
   String s = "Count: ";
   textSize(50);
   text(s+rollCount,60, 470);
   System.out.println(s+rollCount);
 
  }
  
  void mousePressed()
  { 
    redraw();
  }
  
  class Dice //models one single dice cube
  {
      //member variable declarations here
      int x;
      int y;
      int mySize;
      int num;
       
      Dice(int x1, int y1, int size2) //constructor
      {
          //variable initializations here
          x = x1;
          y = y1;
          mySize = size2;
      }
      void roll()
      {
          //your code here
          num = (int)(Math.random()*6)+1;
          
      }
      void show()
      {
          //your code here
          fill (255);
          square (x,y,mySize);
          
          
          
          
          int div = 6;
          fill (0);
          if (num == 6) {
            ellipse ((float)x+(mySize/5),(float)y+(mySize/5),mySize/div,mySize/div); //top left corner
            ellipse ((float)x+(mySize/1.25), (float) y+(mySize/5), mySize/div, mySize/div); // top rt corner
            ellipse ((float)x+(mySize/5), (float) y + (mySize/1.25), mySize/div, mySize/div); //bottom left corner
            ellipse ((float)x+(mySize/1.25), (float) y+(mySize/1.25), mySize/div, mySize/div); //btm rt corner
            ellipse ((float)x+(mySize/5), (float) y+(mySize/2), mySize/div, mySize/div); // left center
            ellipse ((float)x+(mySize/1.25), (float) y+(mySize/2), mySize/div, mySize/div); // rt center
          } else if (num == 5){
            ellipse ((float)x+(mySize/5),(float)y+(mySize/5),mySize/div,mySize/div); //top left corner
            ellipse ((float)x+(mySize/1.25), (float) y+(mySize/5), mySize/div, mySize/div); // top rt corner
            ellipse ((float)x+(mySize/5), (float) y + (mySize/1.25), mySize/div, mySize/div); //bottom left corner
            ellipse ((float)x+(mySize/1.25), (float) y+(mySize/1.25), mySize/div, mySize/div); //btm rt corner
            ellipse ((float)x+(mySize/2), (float) y+(mySize/2), mySize/div, mySize/div); // center
          } else if (num == 4){
            ellipse ((float)x+(mySize/5),(float)y+(mySize/5),mySize/div,mySize/div); //top left corner
            ellipse ((float)x+(mySize/1.25), (float) y+(mySize/5), mySize/div, mySize/div); // top rt corner
            ellipse ((float)x+(mySize/5), (float) y + (mySize/1.25), mySize/div, mySize/div); //bottom left corner
            ellipse ((float)x+(mySize/1.25), (float) y+(mySize/1.25), mySize/div, mySize/div); //btm rt corner
          } else if (num == 3){
            ellipse ((float)x+(mySize/1.25), (float) y+(mySize/5), mySize/div, mySize/div); // top rt corner
            ellipse ((float)x+(mySize/5), (float) y + (mySize/1.25), mySize/div, mySize/div); //bottom left corner
            ellipse ((float)x+(mySize/2), (float) y+(mySize/2), mySize/div, mySize/div); // center
          } else if (num == 2){
            ellipse ((float)x+(mySize/1.25), (float) y+(mySize/5), mySize/div, mySize/div); // top rt corner
            ellipse ((float)x+(mySize/5), (float) y + (mySize/1.25), mySize/div, mySize/div); //bottom left corner
          } else {
            ellipse ((float)x+(mySize/2), (float) y+(mySize/2), mySize/div, mySize/div); //center
          }
      }
  }
