PVector v0, v1;

void setup()
{
  size(600,600);
  
  int low=0;
  int high=8;
  int x0 = 7;
  int y0 = 8;
  int x1 = 15;
  int y1 = 13;
  v0 = new PVector(x0, y0);
  v1 = new PVector(x1, y1);
}
void update()
{
  int low=0;
  int high=200;
  int x0 = 7;
  int y0 = 8;
  int x1 = 15;
  int y1 = 13;
  v0 = new PVector(x0, y0);
  v1 = new PVector(x1, y1);
}

void draw() 
{
   update();
   color red= color(255,0,0);
  line_bresenham(v0, v1, red);
}
void line_bresenham(PVector v0, PVector v1, color c)
{
  int x0= (int)v0.x;
  int y0= (int)v0.y;
  int x1= (int)v1.x;
  int y1= (int)v1.y;
  boolean steep = false;
  if (abs(x0-x1)<abs(y0-y1))
  {
      int temp= x0;
      x0= y0;
      y0= temp;

      temp= x1;
      x1= y1;
      y1= temp;
      
      steep = true;
  }
  if (x0>x1)
  {
      int temp= x0;
      x0= x1;
      x1= temp;
      
      temp= y0;
      y0= y1;
      y1= temp;
  }
  int dx = x1-x0;
  int dy = y1-y0;
  int derror2 = abs(dy)*2;
  int error2 = 0;
  int y = y0;
  for (int x=x0; x<=x1; x++)
  {
      if (steep) 
      {
          set(y, x, c);
      } 
      else 
      {
          set(x, y, c);
      }
      error2 += derror2;

      if (error2 > dx) 
      {
          y += (y1>y0?1:-1);
          error2 -= dx*2;
      }
  }
}
