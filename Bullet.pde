class Bullet extends Floater
{
	private double dRadians = myPointDirection*(Math.PI/180); 
	public Bullet(Spaceship bob)
	{
		myColor = color(255,0,0);
		myCenterX = bob.getCenterX();
		myCenterY = bob.getCenterY();
		myPointDirection = bob.getPointDirection();
		myDirectionX = 5* Math.cos(dRadians) + bob.getDirectionX();
    	myDirectionY = 5* Math.sin(dRadians) + bob.getDirectionY();
	}
	public void show()
	{
		ellipse((float)myCenterX,(float)myCenterY,10,10);
	}
	public void move()
	{
		myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;
	}
	public float getX()
	{
		return (float)myCenterX;
	}
	public float getY()
	{
		return (float)myCenterY;
	}
}