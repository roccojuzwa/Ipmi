if (pantalla == 4) {
  if (posImagenArmin < 10) {
    posImagenArmin = posImagenArmin+5;
  }
  image(armin, 50, posImagenArmin, 535, 360);
  if (posTextoArmin > 380) {
    posTextoArmin = posTextoArmin -2;
  }
  fill(255);
  textSize(23);
  text("Armin es físicamente el más débil del grupo, pero", 5, posTextoArmin);
  text("posee una mente brillante. Mientras otros se pierden", 5, posTextoArmin + 20);
  text("en el pánico, él analiza el campo de batalla y las", 5, posTextoArmin +40);
  text("motivaciones de los titanes.", 5, posTextoArmin +60);}
