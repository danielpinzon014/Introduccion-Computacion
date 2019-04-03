class midpoint{
 int ang;
 int x0; 
 int y0;
 int r;
 void Circulo( int m_x0, int m_y0, int m_r, int m_ang){
  ang = m_ang;
  r= m_r;
  x0= m_x0;
  y0 = m_y0;
  
 }
void DibujarCirculo() {
  int circCol = color(232, 196, 91);
  float limite = radians(ang);
  int x = r;
  int y = 0;
  int err = 0;
 
  while (x >= y && atan2(y, x) < limite) {
    set(x0 + x, y0 + y, circCol);
    set(x0 + y, y0 + x, circCol);
    set(x0 - y, y0 + x, circCol);
    set(x0 - x, y0 + y, circCol);
    set(x0 - x, y0 - y, circCol);
    set(x0 - y, y0 - x, circCol);
    set(x0 + y, y0 - x, circCol);
    set(x0 + x, y0 - y, circCol);
 
    y += 1;
    if (err <= 0) {
      err += 2*y + 1;
    }
    if (err > 0) {
      x -= 1;
      err -= 2*x + 1;
    }
  }
}
}
