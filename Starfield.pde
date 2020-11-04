Particle[] atom = new Particle [1000];
 void setup()   
 {     
  size(500,500);
 for(int i = 0; i < atom.length; i++)
  {
    atom[i] = new Particle ();
    for(int j = 0; j < 21; j++)
    {
    atom[j] = new OddballParticle();
    }
  }
 } 
 
 void draw()   
 {    
   background(0);
   
   for(int i = 0; i < atom.length; i++)
  {
    atom[i].move();
    atom[i].show();
  }
  fill(0,255,51);
  ellipse(250,250,100,100);
 }
 
 void mousePressed()
 {
   for(int i = 0; i < atom.length; i++)
  {
    atom[i].disperse();
  }
 }
 
 class Particle    
 {     
   double myX, myY, myAngle, mySpeed; 
   int myColor;
   
   Particle () 
   {
     myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
     myX = 250;
     myY = 250;
     myAngle = Math.random()*2*PI;
     mySpeed = Math.random()*10;
   }
   
   void move()
   {
     myX = myX + Math.cos(myAngle) * mySpeed;
     myY = myY + Math.sin(myAngle) * mySpeed;
   }
   
   void show()
   {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX,(float)myY,5,5);
   }
   
   void disperse()
   {
     myX = 250;
     myY = 250;
   }
 }
 
 class OddballParticle extends Particle
 {
   OddballParticle()
   {
     mySpeed = Math.random()*5;
   }
   
   void move()
   {
     myX = myX + Math.cos(myAngle) * mySpeed;
     myY = myY + Math.sin(myAngle) * mySpeed;
   }
   
  void show()
   {
    fill(myColor);
    stroke(myColor);
    rect((float)myX,(float)myY,30,30,150);
    ellipse((float)myX + 15.5,(float)myY + 30,50,25);
   } 
 }
 
