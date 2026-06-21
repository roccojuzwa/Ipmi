//(https://youtu.be/6rMKoQVRvD4)//
PImage foto;
float tam = 75;
int colorActual = 0;

int ROJO = 0;
int VERDE = 1;
int AZUL = 2;

void setup() {
  size(800, 400);
  noStroke();
  foto = loadImage("21.jpg");
}

void draw() {
  background(255);
    image(foto, 0, 0, 400, 400);
  pushMatrix();
  translate(400, 0);
  for (int pos = 0; pos < 400; pos += 18) {
    fill(255, 0, 0);
    rect(0, pos, 400, 6);
  }
  for (int pos = 6; pos < 400; pos += 18) {
    fill(0, 255, 0);
    rect(0, pos, 400, 6);
  }
  for (int pos = 12; pos < 400; pos += 18) {
    fill(0, 0, 255);
    rect(0, pos, 400, 6);
  }

  for (int j = 0; j < 5; j++) {
    for (int i = 0; i < 3; i++) {
      
      float posX = i * 140 + 60;
      float posY = j * 85 + 30; 

      if (j % 2 == 0) {
        posX = posX + 70;
      }

      float distanciaMouse = dist(mouseX, mouseY, posX + 400, posY);
      float tamFinal = calcularTamFinal(distanciaMouse, tam);

      int valorColor = (colorActual + i + j) % 3;
      int colorElegido = ROJO;
      
      if (valorColor == 0) colorElegido = ROJO;
      if (valorColor == 1) colorElegido = VERDE;
      if (valorColor == 2) colorElegido = AZUL;

      Elipse (posX, posY, tamFinal, colorElegido);
    }
  }
  popMatrix();

  fill(0);
  rect(398, 0, 4, 400);
}

void Elipse (float posHorizontal, float posVertical, float t, int colorDeFigura) {
  pushMatrix();
  translate(posHorizontal, posVertical);

  float anguloGiro = map(mouseX, 0, 800, -PI/4, PI/4);
  rotate(anguloGiro);
  
  fill(150);
  ellipse(0, 0, t, t); 

  float mitadFigura = t / 2;

  for (float lineaElipse = -mitadFigura; lineaElipse < mitadFigura; lineaElipse += 1) {
    int y = int(posVertical + lineaElipse); 
    int Linea = y% 18;
    
    boolean dibujarLinea = false;

    if (colorDeFigura == ROJO && Linea >= 0 && Linea < 6) {
      fill(255, 0, 0);
      dibujarLinea = true;
    } else if (colorDeFigura == VERDE && Linea >= 6 && Linea < 12) {
      fill(0, 255, 0);
      dibujarLinea = true;
    } else if (colorDeFigura == AZUL && Linea >= 12 && Linea < 18) {
      fill(0, 0, 255);
      dibujarLinea = true;
    }

    if (dibujarLinea == true) {
      float anchoLinea = 0;
      for (float xPrueba = 0; xPrueba < mitadFigura; xPrueba += 1) {
        if (dist(0, 0, xPrueba, lineaElipse) < mitadFigura) {
          anchoLinea = xPrueba * 2;
        }
      }

      rectMode(CENTER);
      rect(0, lineaElipse, anchoLinea, 1);
      rectMode(CORNER);
    }
  }
  
  popMatrix();
}

float calcularTamFinal(float distancia, float tBase) {
  return map(distancia, 0, 800, tBase + 25, tBase - 15);
}
