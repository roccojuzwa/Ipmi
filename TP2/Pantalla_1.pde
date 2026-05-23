if (pantalla == 1) {
  if (posImagenTitanes < 10) {
    posImagenTitanes = posImagenTitanes +5;
  }
  image(titanes, 50, posImagenTitanes, 535, 360);
  if (posTextoTitanes > 350) {
    posTextoTitanes = posTextoTitanes -2;
  }
  fill(255);
  textSize(23);
  text("Sin embargo, un día El Titán Colosal, destruye la puerta ", 5, posTextoTitanes);
  text("del Distrito de un solo golpe. La paz se rompe al instante", 5, posTextoTitanes + 20);
  text("y los titanes invaden el distrito, convirtiendo el hogar", 5, posTextoTitanes +40);
  text("de miles de personas en un matadero, y obligando a los", 5, posTextoTitanes +60);
  text("supervivientes a retroceder hacia dentro del Muro Rose. ", 5, posTextoTitanes +80);}
