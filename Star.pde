class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mySize, myColor;
  public Star()
  {
  	myX = (int)(Math.random() * 500);
  	myY = (int)(Math.random() * 500);
  	mySize = 2;
  	myColor = color(255,255,255);
  }
  public void show()
  {
  	stroke(myColor);
  	fill(myColor);
  	ellipse(myX,myY,mySize,mySize);
  }
}
