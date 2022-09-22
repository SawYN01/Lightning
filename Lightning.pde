
void setup()
{
  size(500,500);
  strokeWeight(3);
  background(0);
  //noLoop();
  frameRate(60);
  
    
  //mjolnir head
  translate(200,100);
  stroke(255,255,255);
  fill(103,102,100);
  rotate(radians(135));
  translate(150,250);
  rect(-150,-250, 100, 80);
  
  //handle
  fill(80,49,3);
  rect(-110,-170,20,150);
  fill(180,180,180);
  
  //stripes
  stroke(180,180,180);
  strokeWeight(3);
  line(40,10,100,5);
 

}

  int startX = 170;
  int startY = 135;
  int endX = 170;
  int endY = 135;
  
void draw()
{
  //lightning

   // yellow(222,201,40) - changing yellow color
  int r = 222 + (int)(Math.random()*40);
  int g = 201 + (int)(Math.random()*40);
  int b = 40 + (int)(Math.random()*40);
  stroke(r,g,b);
  
  //while (endX < 500) {
    endX = startX + ((int)(Math.random()*10)-5);
    endY = startY + ((int)(Math.random()*10)+3);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  //}

}

void mousePressed()
{ 
  redraw();
}


void setup()
{
  size(500,500);
  strokeWeight(3);
  background(0);
  //noLoop();
  frameRate(10);
  
    
  //mjolnir head
  translate(200,100);
  stroke(255,255,255);
  fill(103,102,100);
  rotate(radians(135));
  translate(150,250);
  rect(-150,-250, 100, 80);
  
  //handle
  fill(80,49,3);
  rect(-110,-170,20,150);
  fill(180,180,180);
  
  //stripes
  stroke(180,180,180);
  strokeWeight(3);
  line(40,10,100,5);

}

  int startX = 170;
  int startY = 135;
  int endX = 170;
  int endY = 135;
  
  //int diameter = 30;
void draw()
{ 
  //background(0,0,0,10);
  //lightning
   // yellow(222,201,40) - changing yellow color
  int r = 222 + (int)(Math.random()*100);
  int g = 201 + (int)(Math.random()*100);
  int b = 40 + (int)(Math.random()*100);
  stroke(r,g,b);
  
  while (endX < 500) {
    endX = startX + ((int)(Math.random()*70)-20);
    endY = startY + ((int)(Math.random()*50)+10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  if (endX > 500) {
    startX = 170;
    startY = 135;
    endX = 170;
    endY = 135;
  }
}

void mousePressed()
{ 
    //redraw();

}
