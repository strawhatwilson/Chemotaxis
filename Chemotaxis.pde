Bacteria [] shinos;
int x = 0;
int y = 0;

 void setup()   
 {     
 	size (700,700);
 	//background ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	shinos = new Bacteria [100];
 	for (int i = 0; i < shinos.length; i++)
 	{
 		shinos[i] = new Bacteria();
 	}
 	   
 }   
 
 void draw()   
 {    
 	int bgColor = color ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),1);
 	fill(bgColor);
 	stroke(bgColor);
 	rect(0,0,700,700);
 	for (int i = 0; i < shinos.length; i++)
 	{
 		shinos[i].show();
 		shinos[i].move();
 	}
 }  
 void mousePressed()
 {
 	redraw();
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

 	 	if (bacX > mouseX){
 			bacX = bacX - (int)(Math.random()*2);
 		}
 		if (bacX < mouseX){
 			bacX = bacX + (int)(Math.random()*2);
 		}
 		
 		if (bacY > mouseY){
 			bacY = bacY - (int)(Math.random()*2);
 		}
 		if (bacY < mouseY) {
 			bacY = bacY + (int)(Math.random()*2);
 		}
 	}
 }     	
