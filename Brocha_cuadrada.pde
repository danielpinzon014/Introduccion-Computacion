float sw = 0;
float speed = 0;
float accel = 0;
float inkhue = 0;
int brght = 99;
int brght2 = 0;
int sat = 25;
int clearing = 0;
float clearspeed = 0.75;
boolean button1 = true;
boolean button2 = false;

void setup(){
  size(500, 650);
  background(255);
  smooth();
}

void draw() {
  colorMode(RGB, 45, 55, 215); //Color de fondo


//Dibujar las lineas con el mouse
  noStroke();
  fill(0, 0, 99, clearspeed);
  rectMode(CENTER);
  rect(width/2,height/2,width,height);
  

  speed = 
  sw = brushStroke();
  
  //color y mezcla de color
  stroke(inkhue, 100, brght);
  strokeWeight(sw);
  
  //Presion del mouse
  if (mousePressed && mouseY<height-40) {
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  
  //panel
  noStroke();
  fill(45,12,96);
  rect(width/2, height-20, width, 40);
  
 
  //boton cuadrado 
  colorMode(RGB);
  fill(45,55,78);
  rectMode(CENTER);
  rect(50, height-20, 20, 20);
}
//--end of draw()

//Funciones movimiento de la brocha

float brushStroke(){
  float speed = (abs(mouseX-pmouseX) + abs(mouseY-pmouseY))/5; 
  speed = constrain(speed, 1, 100);
  speed *= -1;
  sw += speed + 3;
  sw = constrain(sw, 2, 25);
  return sw;
}

void mousePressed() {

  //Presionar boton del cuadrado
  if (mouseX>30 && mouseX<70 &&
      mouseY>height-30 && mouseY<height-10) {
    button2 = !button2;
    }
}

void keyPressed(){
  if (keyCode==32) button2 = !button2;
}
