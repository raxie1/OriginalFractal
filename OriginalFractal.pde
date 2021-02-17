public void setup()
{
  size(800, 800); //canvas
  noLoop();
}
public void draw()
{
  background(254, 243, 211); //#fef3d3
  fractal(400, 400, 300); 
}
public void fractal(double x, double y, double size)
{
  fill(245, 215, 232); //#f5d7e8
  stroke(93, 94, 180); //#5d5eb4
  ellipse((float)x, (float)y, (float)size, (float)size);
  if(size > 10)
  {
    fractal(x+size/2, y+size/2, size/2);
    fractal(x-size/2, y-size/2, size/2);
    fractal(x-size/2, y+size/2, size/2);
    fractal(x+size/2, y-size/2, size/2);
    fractal(x+size/2, y-size/2, size/2);
    fractal(x+size/2, y-size/2, size/2);
  }
}
