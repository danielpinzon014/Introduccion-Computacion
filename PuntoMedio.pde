

midpoint m; 
void setup() {
  size(600, 600);
  background(255);
  m = new midpoint();
  m.Circulo(300,300,150,80);//Crear el circulo(x,y,radio,angulo de los arcos)
}
 
void draw() {
 
  
  m.DibujarCirculo();
}
 
