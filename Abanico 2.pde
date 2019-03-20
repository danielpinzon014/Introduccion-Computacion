// Daniel Pinzon
size (1280, 720);
background(255);
for (int j=270;j>90 ; j--){ //angulo 
for (int i=0;i<280 ; i++){//cantidad de arcos
stroke (0);
point (i*(cos(radians(j)))+640 ,i*sin(radians(j))+360);
}
}