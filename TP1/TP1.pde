PImage miImagen;

void setup (){
  size(800,400);
  miImagen = loadImage("obra.png");
  miImagen.resize(400,400);
}

void draw() {
  translate(0,0);
  background(#3E1408);
  image(miImagen,0,0);
  //fondo
  fill(25, 30, 35);
  rect(510,0,400,400);
  rect(400, 0, 60, 400);
  fill(35, 45, 55);
  rect(460,0,50,400);
  rect(460, 280, 400, 200);
  fill(90, 65, 40);
  rect(460, 50, 340, 15);
  fill(220, 220, 210);
  rect(670, 160, 110, 45);//texto atras
  
  fill(245, 230, 210);
  rect(560, 140, 40, 110);//cuello
  ellipse(570, 120, 85, 110);//cara
  triangle(535, 110, 535, 140, 510, 140);//nariz
  ellipse(470, 345, 50, 35);
  fill(30);
  ellipse(540, 105, 10, 5);//ojo
  fill(210, 175, 70);
  ellipse(590, 90, 90, 75);//pelo 
  ellipse(625, 115, 55, 75);
  
  fill(235, 185, 40);
  ellipse(580, 300, 150, 230);
  fill(170, 40, 40);
  rect(480,320,100,50);
  rect(580, 220, 50, 150);
  
}
