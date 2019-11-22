class Asteroid extends Floater
{
	private int rot; 
	public Asteroid()
	{
		rot = (int)(Math.random() * 7) - 3;
		myColor = color(130,125,105);
		myCenterX = (int)(Math.random() * 500) + 1;
    	myDirectionX = (int)(Math.random() * 3) - 1;
    	myDirectionY = (int)(Math.random() * 3) - 1;
    	myCenterY = (int)(Math.random() * 500) + 1;
    	myPointDirection = (int)(Math.random() * 360) + 1;
		corners = 13;
		xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = 12;
    	yCorners[0] = 0;
    	xCorners[1] = 9;
    	yCorners[1] = 6;
    	xCorners[2] = 4;
    	yCorners[2] = 8;
    	xCorners[3] = 0;
    	yCorners[3] = 12;
    	xCorners[4] = -4;
    	yCorners[4] = 9;
    	xCorners[5] = -7;
    	yCorners[5] = 6;
    	xCorners[6] = -12;
    	yCorners[6] = 3;
    	xCorners[7] = -9;
    	yCorners[7] = -3;
    	xCorners[8] = -9;
    	yCorners[8] = -9;
    	xCorners[9] = -3;
    	yCorners[9] = -9;
    	xCorners[10] = 1;
    	yCorners[10] = -7;
    	xCorners[11] = 6;
    	yCorners[11] = -6;
    	xCorners[12] = 10;
    	yCorners[12] = -3;
	}
	public void move()
	{
		myPointDirection+=rot;
    	myCenterX += myDirectionX;
    	myCenterY += myDirectionY;
    	if(myCenterX >width)
    	{     
     	 myCenterX = 0;    
    	}else if (myCenterX<0)
    	{     
      	myCenterX = width;    
    	}    
    	if(myCenterY >height)
    	{    
      	myCenterY = 0;    
    	}else if (myCenterY < 0)
    	{     
     	 myCenterY = height;    
    	}   
	}
	public void setDirectionX(double x)
    {
    	myDirectionX = x;
    }
    public void setDirectionY(double y)
    {
    	myDirectionY = y;
    }
    public void setCenterX(double myX)
    {
    	myCenterX = myX;
    }
    public void setCenterY(double myY)
    {
    	myCenterY = myY;
    }
    public void setPointDirection(double myDirection)
    {
    	myPointDirection = myDirection;
    }
}