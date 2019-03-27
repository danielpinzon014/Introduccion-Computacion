Pincel aPincel;
boolean button1 = true;
boolean button2 = false;
float sw = 0;
float velocidad = 0;
float accel = 0;
int brght = 99;
int brght2 = 0;
int sat = 25;
int limpieza = 0;
float vellimpieza = 0.75;

void setup() {
  smooth();
  size(1280, 720);
  aPincel = new Pincel(0, 0, 0);
  background(255);
  smooth();
 
}
void draw() {
  colorMode(RGB, 255, 44, 75); //Color del progama


//Dibujar las lineas con el mouse
  noStroke();
  fill(0, 0, 99, vellimpieza);
  rectMode(CENTER);
  rect(width/2,height/2,width,height);
  

  velocidad = 
  sw = brushStroke();
  
  //color y mezcla de color
  stroke(0, 50, brght);
  strokeWeight(sw);
  
  //Forma de la linea
  if (mousePressed && mouseY<height-40) {
    rect(pmouseX,pmouseY,30,30);
  }
  
  //panel
  noStroke();
  fill(45,12,96);
  rect(width/2, height-20, width, 40);
  
 
  //boton cuadrado 
  colorMode(RGB);
  fill(45,55,78);
  rectMode(CENTER);
  rect(100, height-20, 20, 20);
  
  //Boton limpiar 
  colorMode(RGB);
  fill(192,255,255);
  //rectMode(CENTER);
  String s = "Limpiar";
  text(s,30, height-10, 45, 45);
  
  //Resaltar el boton de limpiar //tomado de https://processing.org/examples/rollover.html
  if (mouseX>10 && mouseX<30 && mouseY>height-30 && mouseY<height-10) {
    fill(0, 0, 100, 50);
    text(s,30,height-10,45,45);
      }
  //Limpiar pantalla
  if (button1) {
    vellimpieza = 25;
    limpieza = limpieza+1;
    if (limpieza==20) {
      button1 = !button1;
      vellimpieza = 0.75;
      limpieza = 0;
    }
  }
}

//Funciones movimiento de la brocha

float brushStroke(){//Da sensasion de presion por velocidad del mouse 
  float speed = (abs(mouseX-pmouseX) + abs(mouseY-pmouseY))/10; //obtiene la posicion del mouse para dibujar unir los puntos para dibujar
  speed = constrain(speed, 1, 100);
  speed *= -1;
  sw += speed + 3;
  sw = constrain(sw, 2, 25);
  return sw;
}
class Pincel {
  /* Atributos */
  int xBrushPos;    // x
  int yBrushPos;    // y
  float bSize;  // tamaño
  /* Metodos */
  // Constructor
  public Pincel(int PincelX, int PincelY, float PincelS) {
    xBrushPos = PincelX;
    yBrushPos = PincelY;
    bSize = PincelS;
  }
  void move(int newX, int newY, float newBrush) {
    xBrushPos = newX;
    yBrushPos = newY;
    bSize = newBrush;
  }
void mousePressed() {

  //Presionar boton del cuadrado
  if (mouseX>78 && mouseX<28 && mouseY>height-30 && mouseY<height-10) {
    button2 = !button2;
    }
    //Boton limpiar
  if (mouseX>10 && mouseX<30 &&
      mouseY>height-30 && mouseY<height-10) {
    button1 = !button1;
    }
}

void keyPressed(){
  if (keyCode==32) button2 = !button2;
}
}
