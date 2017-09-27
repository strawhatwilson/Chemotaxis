Bacteria [] shinos;
int x = 0;
int y = 0;

 void setup()   
 {     
 	size (700,700);
 	background (0);
 	shinos = new Bacteria [10];
 	for (int i = 0; i < shinos.length; i++)
 	{
 		shinos[i] = new Bacteria();
 	}
 	   
 }   
 void draw()   
 {    
 	for (int i = 0; i < shinos.length; i++)
 	{
 		shinos[i].show();
 		shinos[i].move();
 	}
 }  
 class Bacteria    
 {     
 	int bacX, bacY, bacColors;
 	Bacteria ()
 	{
 		bacX = (int)(Math.random()*700);
 		bacY = (int)(Math.random()*700);
 		bacColors = color ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255)); 
 	}
 	void show()
 	{
 		stroke(bacColors);
 		fill(bacColors);
 		ellipse(bacX, bacY, 10, 10);
 	}
 	void move()
 	{

 	 	x++;
 	}
 }     	
