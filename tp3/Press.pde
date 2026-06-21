void mousePressed() {
  colorActual = colorActual + 1;
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    colorActual = 0;
    tam = 75;
  }

  if (key == 't' || key == 'T') {
    tam = random(50, 95);
  }
}
