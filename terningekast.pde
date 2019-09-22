// Opsæt billede
void setup() {
  size(800, 800);
}

// Skriv forklarende tekst
void draw() {
  textSize(60);
  text("tryk på musen for at kaste med terningen", 30, 60);
  text("når du kaster terningen ", 30, 120);
  text("kaster du den 100 gange", 30, 170);
}

// Kast terning (100 gange), når der klikkes på musen
void mousePressed() {
  // Nulstil antallet af kast
  int en = 0;
  int to = 0;
  int tre = 0;
  int fire = 0;
  int fem = 0;
  int seks = 0;

  // Kast med terningen 100 gange
  for (int k=0; k<100; k++) {
    int r = (int) random(1, 7);

    // Tæl variable op
    if (r == 1)
      en++;
    else if (r == 2)
      to++;
    else if (r == 3)
      tre++;
    else if (r == 4) 
      fire++;
    else if (r == 5) 
      fem++;
    else if (r == 6) 
      seks++;

    // Visualiser resultat
    clear();
    fill(250);
    textSize(32);
    text("1'er", 0, 500);
    text("2'er", 80, 500);
    text("3'er", 160, 500);
    text("4'er", 240, 500);
    text("5'er", 320, 500);
    text("6'er", 400, 500);
    fill(255, 0, 0);
    text(en, 0, 550);
    text(to, 80, 550);
    text(tre, 160, 550);
    text(fire, 240, 550);
    text(fem, 320, 550);
    text(seks, 400, 550);

    rect(0, 700, 40, -(en+55));
    rect(80, 700, 40, -(to+55));
    rect(160, 700, 40, -(tre+55));
    rect(240, 700, 40, -(fire+55));
    rect(320, 700, 40, -(fem+55));
    rect(400, 700, 40, -(seks+55));

    println("1=", en, "2=", to, "3=", tre, "4=", fire, "5=", fem, "6=", seks);
  }
}
