public int change =800;
public int changer =800;
public void setup()
{
  size(800,800);
} 

public void draw()
{
  background(0);
  sierpinski(0,800,change);
}  
public void mousePressed()//optional
{
 if(mousePressed == true)
 if(changer >400)
 changer = changer -400;
 else
 if(changer >200)
 changer = changer - 200;
 else
   changer= changer - 100; 
   if(changer < 100)
   changer= 800;
}
public void sierpinski(int x, int y, int len) 
{
  fill(255,255,0);
   if(len>=changer)
   {
   sierpinski(x,y,len/2);
   sierpinski(x+len/2,y,len/2);
   sierpinski(x+len/4,y-len/2,len/2);
   }
   else{
     triangle(x,y,x+len,y,x+len/2,y-len);
   }
}
