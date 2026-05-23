if (pantalla == 3) {
  if (posImagenMikasa < 10) {
    posImagenMikasa = posImagenMikasa+5;
  }
  image(mikasa, 50, posImagenMikasa, 535, 360);
  if (posTextoMikasa > 380) {
    posTextoMikasa = posTextoMikasa -2;
  }
  fill(255);
  textSize(23);
  text("Mikasa, quien fue rescatada por Eren años atrás,", 5, posTextoMikasa);
  text("se ha convertido en una guerrera prodigiosa. Para", 5, posTextoMikasa + 20);
  text("ella, el mundo es un lugar cruel donde solo los fuertes", 5, posTextoMikasa +40);
  text("sobreviven. Su única motivación es proteger a Eren a", 5, posTextoMikasa +60);
  text("toda costa.", 5, posTextoMikasa +80);}

  
