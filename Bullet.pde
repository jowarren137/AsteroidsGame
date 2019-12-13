class Bullet extends Floater
{
	private double dRadians; 
	public Bullet(Spaceship bob)
	{
		myColor = color(255,0,0);
		myCenterX = bob.getCenterX();
		myCenterY = bob.getCenterY();
		myPointDirection = bob.getPointDirection();
		dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + bob.getDirectionX();
    	myDirectionY = 5 * Math.sin(dRadians) + bob.getDirectionY();
	}
	public float getX()
	{
		return (float)myCenterX;
	}
	public float getY()
	{
		return (float)myCenterY;
	}
	public void show()
	{
		fill(myColor);
		noStroke();
		ellipse((float)myCenterX,(float)myCenterY,7,7);
	}
}