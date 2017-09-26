Bacteria shino;
int x = 0;
int y = 0;

 void setup()   
 {     
 	size (700,700);
 	background (0);

 	   
 }   
 void draw()   
 {    
 	shino = new Bacteria (350,350);
 	shino.show();
 }  
 class Bacteria    
 {     
 	int bacX, bacY, bacColors;
 	Bacteria (int x, int y)
 	{
 		bacX = x;
 		bacY = y;
 		bacColors = color ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255)); 
 	}
 	void show()
 	{
 		stroke(bacColors);
 		fill(bacColors);
 		ellipse(bacX, bacY, 10, 10);
 		
 	}
 }    