int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;
PImage img;
void setup()
{
  size(500,500);
  strokeWeight(3);
  background(255);
  img = loadImage("Lightening help.jpg");
}
void draw()
{
    image (img, 250-width/8, 400,width/4, height/4);
    
    stroke(0);
    while(endY < 500){
      endY = startY + (int)(Math.random() * 9);
      endX = startX + (int)(Math.random() * 19)-9;
      line(startX,startY,endX,endY);
      startY = endY;
      startX = endX;
    }
    monkeyKingCloud();
}
void monkeyKingCloud(){
  stroke(127);
  fill(127);
  rect(150,50,200,50);
  ellipse(250,25,50,50);
  ellipse(270,45,50,50);
  ellipse(220,35,50,50);
  ellipse(190,50,50,50);
  ellipse(300,35,50,50);
  ellipse(310,75,100,100);
  ellipse(190,75,100,100);
  ellipse(250,105,100,50);
}
void mousePressed()
{
  startX = 250;
  startY = 0;
  endX = 250; 
  endY = 0;
}

