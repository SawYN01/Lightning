void setup()
{
  size(500,500);
  strokeWeight(3);
  background(0);
  //noLoop();
  frameRate(5);
  
    
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
}
  

  int startX = 170;
  int startY = 135;
  int endX = 170;
  int endY = 135;
  
  //int diameter = 30;
void draw()
{ 
  //stripes
  stroke(180,180,180);
  strokeWeight(2);
  line(35,20,50,5);
  line(50,30,60,20);
  line(60,45,75,30);
  line(75,60,90,45);
  line(90,75,105,60);
  
  //surtur head and helmet
  noStroke();
  fill(108,8,28);
  triangle(145, 400, 200, 380, 50, 310);
  triangle(355, 400, 300, 380, 450, 310);
  rect(51, 265, 11, 50);
  rect(438, 265, 11, 50);
  
  fill(250,30,5);
  ellipse(250, 380, 240, 100);
  triangle(180,410, 250, 470, 320, 410);
  rect(220,430, 60,60);
 
  fill(82,46,10);
  //teeth
  for(int x = 220; x < 276; x= x+ 17)
    rect(x,450, 10, 17);
  for(int x = 220; x < 276; x= x+ 17)
    rect(x,475, 10, 15);
  //angry eyes
  fill(0,0,0);
  ellipse(215, 390, 30, 10);
  ellipse(285, 390, 30, 10);
  stroke(0);
  strokeWeight(3);
  line(175,360,230,375);
  line(325,360,270,375);
  triangle(240, 410, 260, 410, 250, 430);

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
  if (endX > 450) {
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
