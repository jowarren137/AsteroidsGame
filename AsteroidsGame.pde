Spaceship bob = new Spaceship();
Star[] space;
Asteroid[] astroworld;
public void setup() 
{
  background(0);
  size(500,500);
  space = new Star[400];
  astroworld = new Asteroid[15];
  for(int i = 0; i < space.length; i++)
  {
  	space[i] = new Star();
  }
  for(int i = 0; i < astroworld.length; i++)
  {
  	astroworld[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < space.length; i++)
  {
  	space[i].show();
  }
  for(int i = 0; i < astroworld.length; i++)
  {
  	astroworld[i].show();
  	astroworld[i].move();
  }
  bob.show();
  bob.move();

}
public void keyPressed()
{
	if(key == 'w')
	{
		bob.accelerate(0.5);
	}
	if(key == 'a')
	{
		bob.turn(-10);
	}
	if(key == 's')
	{
		bob.accelerate(-0.5);
	}
	if(key == 'd')
	{
		bob.turn(10);
	}
	if(key == 'e')
	{
		bob.setCenterX((int)(Math.random() * 500) + 1);
		bob.setCenterY((int)(Math.random() * 500) + 1);
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setPointDirection((Math.random() * 360));

	}
	if(key == 'q')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
	}
}

