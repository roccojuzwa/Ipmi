PImage titanes, fondo, logo, eren, mikasa, armin;

int posTextoFondo = 500;
int posImagenFondo = -360;
int posTextoEren = 500;
int posImagenEren = -360;
int posTextoMikasa = 500;
int posImagenMikasa = -360;
int posTextoArmin = 500;
int posImagenArmin = -360;
int posTextoTitanes = 500;
int posImagenTitanes = -360;
int posImagenLogo = -360;
int posTextoLogo = 500;

PFont fuente;
int pantalla = 0;


void setup() {
  size(640, 480);

  titanes = loadImage("titanes.png");
  eren = loadImage("eren.png");
  mikasa = loadImage("mikasa.png");
  armin = loadImage("armin.png");
  fondo = loadImage("fondo.png");
  logo = loadImage("logo.png");
  fuente = loadFont("ArialB.vlw");
  textFont(fuente);
}

void draw() {
  image(fondo, 0, 0, 640, 480);
  if (frameCount > 400) {
    pantalla = 1;
  }
  if (frameCount > 900) {
    pantalla = 2;
  }
  if (frameCount > 1500) {
    pantalla = 3;
  }
  if (frameCount > 2000) {
    pantalla = 4;
  }
  if (frameCount > 2300) {
    pantalla = 5;
  }

  if (pantalla == 0) {
    if (posImagenLogo < 50) {
      posImagenLogo = posImagenLogo +5;
    }
    image(logo, posImagenLogo, -50, 535, 360);
    if (posTextoLogo > 350) {
      posTextoLogo = posTextoLogo -2;
    }
    fill(255);
    textSize(22);
    text("Durante cien años, la humanidad vivió encerrada tras muros.", 5, posTextoLogo);
    text("Tras muros de 50 metros, Creyeron que todo terminaba ahí", 5, posTextoLogo +20);
    text("Creyeron que estaban a salvo de los titanes.", 5, posTextoLogo +40);
  }
