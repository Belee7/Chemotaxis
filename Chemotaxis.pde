 Bacteria[] aBunch;

void setup()   
{     
  size(500, 500);
  aBunch = new Bacteria[300];
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i] = new Bacteria();
  }
}   
void draw()   
{    
  background(0);
  stroke(1);
  fill(224, 255, 255);
  ellipse(250, 250, 430, 430);
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch [i].walk();
    aBunch [i].show();
    if (dist(aBunch[i].myX, aBunch[i].myY,250,250) > 215)
    {
      aBunch[i].myX = 250;
      aBunch[i].myY = 250;
    }
  }
  
}  
class Bacteria    
{     
  int myX, myY;
  int myColor;
  Bacteria()
  {
    myX = 250;
    myY = 250;
    myColor = color(0, (int)(Math.random()*190)+66, (int)(Math.random()*190)+66, 155);
  }

  void walk()
  {
    if (mousePressed == false)
    {
      if (mouseX < myX)
        myX = myX + (int)(Math.random()*5)-1;//right
      else
        myX = myX + (int)(Math.random()*5)-3;//left
      if (mouseY < myY)
        myY = myY + (int)(Math.random()*5)-1; //up
      else
        myY = myY + (int)(Math.random()*5)-3; //down
    }
    if (mousePressed == true)
    {
      if (mouseX > myX)
        myX = myX + (int)(Math.random()*5)-1;//right
      else
        myX = myX + (int)(Math.random()*5)-3;//left
      if (mouseY > myY)
        myY = myY + (int)(Math.random()*5)-1; //up
      else
        myY = myY + (int)(Math.random()*5)-3; //down
    }
    if (myX < 0)
      myX = 0;
    if (myX > 500)
      myX = 500;
    if (myY < 0)
      myY = 0;
    if (myY > 500)
      myY = 500;
    
  }
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 30, 30);
  }
}    
