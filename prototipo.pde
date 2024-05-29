

Fondo fondo;
Grilla grilla;

void setup() {
    size(345, 457); // Tamaño del lienzo
    fondo = new Fondo();
    grilla = new Grilla("data/grilla.png");
}

void draw() {
    fondo.update();
    fondo.draw();
    grilla.draw();
}

void keyPressed() {
    if (key == 'c' || key == 'C') {
        fondo.toggleColor();
    } else if (key == 'w' || key == 'W') {
        grilla.scaleUp();
    } else if (key == 's' || key == 'S') {
        grilla.scaleDown();
    } else if (key == 'a' || key == 'A') {
        grilla.rotateLeft();
    } else if (key == 'd' || key == 'D') {
        grilla.rotateRight();
    } else if (key == 'u' || key == 'U') {
        fondo.setMoveUp(true);
    } else if (key == 'j' || key == 'J') {
        fondo.setMoveDown(true);
    }
}

void keyReleased() {
    if (key == 'u' || key == 'U') {
        fondo.setMoveUp(false);
    } else if (key == 'j' || key == 'J') {
        fondo.setMoveDown(false);
    }
}
