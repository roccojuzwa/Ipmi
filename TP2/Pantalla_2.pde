if (pantalla == 2) {
  if (posImagenEren < 10) {
    posImagenEren = posImagenEren+5;
  }
  image(eren, 50, posImagenEren, 535, 360);
  if (posTextoEren > 350) {
    posTextoEren = posTextoEren -2;
  }
  fill(255);
  textSize(23);
  text("Eren observa impotente cómo su madre es devorada.", 5, posTextoEren);
  text("durante la caída de Shiganshina. A diferencia de ", 5, posTextoEren + 20);
  text("otros niños, el trauma no lo paraliza, lo convierte", 5, posTextoEren +40);
  text("en una furia viviente y se une al grupo de exploracion", 5, posTextoEren +60);
  text("con el motivo de aniquilar a todos los titanes.", 5, posTextoEren +80);}
