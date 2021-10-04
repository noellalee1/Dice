Dice die;
Dice died;
Dice dyed;
Dice dead;
boolean rightClick = false;

void setup()
  {
    size (400,500);
    noLoop();
  }
 
  void draw()
  {
    background (163, 156, 137);
    //your code here
    int rollCount = 0;
    int j = 0;
    
    int bored = (int)(Math.random()*5)+1;
    
    if (bored == 1)
    {
      died = new Dice (0, 0, 400);
      
      died.roll();
      died.show();
      rollCount = died.num + rollCount;
    } else if (bored == 2){
      dyed = new Dice (0,0,400);
      
     while (j<400){
      int i = 0;
     while (i<400) {
        dyed = new Dice (i, j, 200);
        dyed.roll();
        dyed.show();
        i+=200;
        rollCount = dyed.num + rollCount;
     }
     j +=200;

     }

    } else if (bored == 3) {
       dead = new Dice (0,0,400);
        
       while (j<400){
        int i = 0;
       while (i<400) {
          dead = new Dice (i, j, 80);
          dead.roll();
          dead.show();
          i+=80;
          rollCount = dead.num + rollCount;
       }
       j +=80;
  
       }
    } else {
    
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
   
    }
   
   String s = "Count: ";
   textSize(50);
   fill (255);
   text(s+rollCount,60, 470);
  // System.out.println(s+rollCount);
 
  }
  
  void mousePressed()
  { redraw();
    

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
          int r = (int)(Math.random() * 255)+150;
          int g = (int)(Math.random()*255)+150;
          int b = (int)(Math.random()*255)+150;
          
          fill (r,g,b);
          rect (x,y,mySize, mySize, 5);
          
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
