
// Hello these are my balls                     
Ball myBall1;
Ball myBall2;
Ball myBall3;
Ball_Mouse myBall4;

void setup(){
  size(500,500);
  myBall1 = new Ball(color((random(0,255)),(random(0,255)),(random(0,255))),random(10,490),random(10,490),4,0);
  myBall2 = new Ball(color((random(0,255)),(random(0,255)),(random(0,255))),random(10,490),random(10,490),0,4);
  myBall3 = new Ball(color((random(0,255)),(random(0,255)),(random(0,255))),random(10,490),random(10,490), -2,-2);
  myBall4 = new Ball_Mouse(color((random(0,255)),(random(0,255)),(random(0,255))),random(10,490),random(10,490),2,2);
}

void draw() {
  background(255);
  myBall1.move();
  myBall1.display();
  myBall2.move();
  myBall2.display(); 
  myBall3.move();
  myBall3.display();
  myBall4.move();
  myBall4.display();
}
    
    

    
class Ball{
  color c;
  float x;
  float y;
  float dx;
  float dy;
  
  Ball(){
  
  }
  
  Ball(color tempC, float tempX, float tempY, float tempDX, float tempDY) {
    c = tempC;
    x = tempX;
    y = tempY;
    dx = tempDX;
    dy = tempDY;
  }
  
  void display() {
    noStroke();
    fill(c);
    ellipse(x,y,20,20);
  }
  
  void move() {
    
   
    if (y>480 || y<0) {
      dy = dy * -1;
  }
  
  y = y+dy;
  
    if(x>480 || x<0) {
      dx = dx * -1;
    }
    
    x = x + dx ;
    
  }
  
}
    

      
class Ball_Mouse extends Ball{
  

  
  Ball_Mouse(color tempC, float tempX, float tempY, float tempDX, float tempDY) {
    c = tempC;
    x = tempX;
    y = tempY;
    dx = tempDX;
    dy = tempDY;
  }

  void move() {
     
   
    if(mousePressed){
      if(mouseX>0 && mouseX<500 && mouseY>0 && mouseY<500){
       x = mouseX;
    y = mouseY;
      }
    }
    
     if (y>480 || y<0) {
      dy = dy * -1;
  }
  
  y = y+dy;
  
    if(x>500 || x<0) {
      dx = dx * -1;
    }
    
    x = x + dx ;
    
    
    
       
      
  
}



  
  
  
}


