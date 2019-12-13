Spaceship bob = new Spaceship();
Star[] space;
ArrayList <Bullet> shot = new ArrayList <Bullet>();
ArrayList <Asteroid> astroworld = new ArrayList <Asteroid>();
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean sIsPressed = false;
boolean dIsPressed = false;
boolean spaceBar = false;
boolean rIsPressed = false;
public void setup() 
{
  background(0);
  size(500,500);
  space = new Star[400];
  for(int i = 0; i < space.length; i++)
  {
  	space[i] = new Star();
  }
  for(int i = 0; i < 15; i++)
  {
  	astroworld.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < space.length; i++)
  {
  	space[i].show();
  }
  for(int i = 0; i < astroworld.size(); i++)
  {
  	astroworld.get(i).show();
  	astroworld.get(i).move();
  }
  for(int i = 0; i < shot.size(); i++)
  {
  	shot.get(i).show();
  	shot.get(i).move();
  }
  bob.show();
  bob.move();
  if(wIsPressed == true){
		bob.accelerate(0.05);
  	}
	if(aIsPressed == true){
		bob.turn(-2);
	}
	if(dIsPressed == true){
		bob.turn(2);
	}
	if(wIsPressed == true && aIsPressed == true){
		bob.accelerate(0.05);
		bob.turn(-3);
	}
	if(wIsPressed == true && dIsPressed == true){
		bob.accelerate(0.05);
		bob.turn(3);
	}
	if(sIsPressed == true){
		bob.accelerate(-0.05);
	}
	if(spaceBar == true){
		shot.add(new Bullet(bob));
	}
	for(int i = 0; i < shot.size(); i++)
	{
		if(shot.get(i).getX() >= 499 || shot.get(i).getX() <= 1)
		{
			shot.remove(i);
			break;
		}
	}
	for(int i = 0; i < shot.size(); i++)
	{
		if(shot.get(i).getY() >= 499 || shot.get(i).getY() <= 1)
		{
			shot.remove(i);
			break;
		}
	}
	for(int i = 0; i < astroworld.size(); i++)
  	{
    	for(int j = 0; j < shot.size(); j++)
    	{
      		if(dist((float)shot.get(j).getX(), (float)shot.get(j).getY(), (float)astroworld.get(i).getX(), (float)astroworld.get(i).getY()) < 20)
      		{
        	shot.remove(j);
        	astroworld.remove(i);
        	break;
      		}
 		}
    }
    for(int i = 0; i < astroworld.size(); i++)
  	{
      	if(dist((float)bob.getX(), (float)bob.getY(), (float)astroworld.get(i).getX(), (float)astroworld.get(i).getY()) < 20)
      	{
        	astroworld.remove(i);
        	break;
      	}
    }
    if(rIsPressed == true)
    {
    	for(int i = 0; i < 10; i++)
    	{
    		astroworld.add(new Asteroid());
    	}
    }
}
public void keyPressed()
{
	if(key == 'w')
	{
		wIsPressed = true;
	}
	if(key == 'a')
	{
		aIsPressed = true;
	}
	if(key == 's')
	{
		sIsPressed = true;
	}
	if(key == 'd')
	{
		dIsPressed = true;
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
	if(key == ' ')
	{
		spaceBar = true;
	}
	if(key == 'r')
	{
		rIsPressed = true;
	}
}
public void keyReleased()
{
	if(key == 'w'){
		wIsPressed = false;
	}
	if(key == 'a'){
		aIsPressed = false;
	}
	if(key == 's'){
		sIsPressed = false;
	}
	if(key == 'd'){
		dIsPressed = false;
	}
	if(key == ' '){
		spaceBar = false;
	}
	if(key == 'r'){
		rIsPressed = false;
	}
}

