if (pantalla == 5) {
  if (posImagenLogo < 50) {
    posImagenLogo = posImagenLogo +5;
  }
  image(logo, posImagenLogo, -50, 535, 360);
  if (posTextoLogo > 300) {
    posTextoLogo = posTextoLogo -2;
  }

  fill(150, 0, 0);
  rect(220, 365, 200, 50);
  fill(255);
  textSize(23);
  text("Volver a Empezar", 222, 400);
}
}
void mousePressed() {
  if (pantalla == 5) {


    if (mouseX > 220 && mouseX < 420 && mouseY > 365 && mouseY < 450) {

      pantalla = 0;
      posImagenLogo = -360;
      posTextoLogo = 500;
      posImagenTitanes = -360;
      posTextoTitanes = 500;
      posImagenEren = -360;
      posTextoEren = 500;
      posImagenMikasa = -360;
      posTextoMikasa = 500;
      posImagenArmin = -360;
      posTextoArmin = 500;
      frameCount = 0;
    }
  }
}
