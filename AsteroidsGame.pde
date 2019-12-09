Spaceship bob = new Spaceship();
Star[] space;
ArrayList <Bullet> shot = new ArrayList <Bullet>();
Asteroid[] astroworld;
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean sIsPressed = false;
boolean dIsPressed = false;
boolean spaceBar = false;
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
//	if(spaceBar == true){
//		shot.show();
//		shot.move();
//	}
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
//	if(key == ' ')
//	{
 // 		shot.show();
 // 		shot.move();
//	}
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
}

