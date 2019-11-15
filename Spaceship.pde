class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	myColor = color(255,215,0);
    	corners = 13;
    	myCenterX = myCenterY = 250;
    	myDirectionX = myDirectionY = 0;
    	myPointDirection = 0;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = 12;
    	yCorners[0] = 0;
    	xCorners[1] = 7;
    	yCorners[1] = 1;
    	xCorners[2] = 0;
    	yCorners[2] = 1;
    	xCorners[3] = 0;
    	yCorners[3] = 2;
    	xCorners[4] = 4;
    	yCorners[4] = 3;
    	xCorners[5] = -5;
    	yCorners[5] = 4;
    	xCorners[6] = -3;
    	yCorners[6] = 2;
    	xCorners[7] = -3;
    	yCorners[7] = -2;
    	xCorners[8] = -5;
    	yCorners[8] = -4;
    	xCorners[9] = 5;
    	yCorners[9] = -3;
    	xCorners[10] = 0;
    	yCorners[10] = -2;
    	xCorners[11] = 0;
    	yCorners[11] = -1;
    	xCorners[12] = 7;
    	yCorners[12] = -1;
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
