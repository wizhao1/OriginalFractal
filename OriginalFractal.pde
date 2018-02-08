int squareSize = 200;

public void setup()
{
	size(400,400);
	rectMode(CENTER);
}


public void draw()
{
	background(0);
	myFractal(200,200,400);
}


public void mouseDragged()//optional
{
}


public void mousePressed()
{
	if(squareSize>6)
	{
		squareSize = squareSize/2;
	}
}



public void myFractal(int x, int y, int len) 
{
	if(len<=squareSize)
	{
		rect(x,y,len, len);
	}
	else
	{
		fill(255);
		myFractal(x,y,len/3);
		fill(98,255,187);

		myFractal(x-len/3,y+len/3,len/3);
		fill(60,70,130);

		myFractal(x-len/3,y-len/3,len/3);
		fill(130,70,60);

		myFractal(x+len/3,y+len/3,len/3);		
		fill(187,4,98);

		myFractal(x+len/3,y-len/3,len/3);
	}

}