Particle[] atom = new Particle [1000];
 void setup()   
 {     
  size(500,500);
 for(int i = 0; i < atom.length; i++)
  {
    atom[i] = new Particle ();
    for(int j = 0; j < 11; j++)
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
     myX = Math.random()*500;
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
     myX = (int)(Math.random()*500);
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
    rect((float)myX,(float)myY,30,30,5);
   } 
 }

