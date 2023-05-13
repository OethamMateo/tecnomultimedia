
//tp1 Inchazú Mateo comisión 1


PFont roman;
PImage coliseo1;
PImage coliseo2;
PImage coliseo3;
PImage coliseo4;
String pantalla;
int tiempo;
int posx1, posx2, posy2, tamaño;



void setup(){
size(640,480);
coliseo1 = loadImage("coliseo1.jpg");
coliseo2 = loadImage("coliseo2.jpg");
coliseo3 = loadImage("coliseo3.jpg");
coliseo4 = loadImage("coliseo4.jpg");
roman = loadFont("roman.vlw");

textFont(roman);

tiempo = 0;
pantalla = "1";
posx1 = -50;
posx2 = 680;
posy2 = 580;
tamaño= 20;
textSize(20);
textAlign(CENTER);


fill(5, 5, 5);


}


void draw(){




tiempo++;


if (pantalla.equals("1")){   
image(coliseo1, 0, 0, 640, 480);
text("El coliseo romano, \n una de las grandes \n maravillas del mundo antiguo. \n Un icóno de la ciudad de Roma.", width/2, posy2);
posy2 --;
}// pantalla 1



else if (pantalla.equals("2")){
image(coliseo2, 0, 0, 640, 480);
fill(245, 245, 245);
text(" Construido en el siglo I d.C. \n Es considerado una de las \n mayores obras de \n la ingienieria romana",posx1, 240);
posx1 ++;

}// pantalla 2


else if (pantalla.equals("3")){
image(coliseo3, 0, 0, 640, 480);
text(" El Coliseo fue utilizado \n para celebrar diversos eventos \n públicos, como batallas de gladiadores \n caza o representaciones \n teatrales", posx2, 100);
posx2 --;

}  // pantalla 3


else if (pantalla.equals("4")){
image(coliseo4, 0, 0, 640, 480);

text(" Este monumento se ha convertido \n en uno de los mas reconocidos \n de la historia. \n Impresionante por su \n tamaño y arquitectura. \n Es una de las 7 maravillas del mundo. \n Un viaje imperdible para \n los amantes de \n de la historia.", 320, posy2);
posy2 --;
}  // pantalla 4 

else if (pantalla.equals("5")){
  
background(0);
fill(245, 245, 245);
textAlign(CENTER);
textSize(tamaño);

text("Fin", 320,240);

fill(245, 0, 0);
rect( 610, 450, 50, 50);

}


   
if (tiempo <400) {
pantalla = "1";
}
else if (tiempo >= 400 && tiempo < 800){
pantalla = "2";
}
else if (tiempo >= 800 && tiempo < 1200){
pantalla = "3";
}
else if (tiempo >= 1200 && tiempo < 1500){
pantalla = "4";
}

else if(tiempo >= 1500){
pantalla = "5";
if (mouseX>610 && mouseY>450){
tiempo = 0;
pantalla = "1";
posx1 = -50;
posx2 = 680;
posy2 = 580;
fill(5, 5, 5);
textSize(tamaño);
 }
}// transiciones




}
