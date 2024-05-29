class Fondo {
    float offset = 0; // Offset para animar el degradado
    float speed = 0.01; // Velocidad del cambio del degradado
    boolean redGradient = true; // Control para el color de inicio del degradado (rojo/rosa)
    boolean moveUp = false; // Indicador para mover el degradado hacia arriba
    boolean moveDown = false; // Indicador para mover el degradado hacia abajo

    void update() {
        // Mueve el degradado hacia arriba o hacia abajo según los indicadores
        if (moveUp) {
            offset -= speed;
        } else if (moveDown) {
            offset += speed;
        }

        // Ajusta el offset para mantener el bucle continuo
        if (offset > 1) {
            offset = 0;
        } else if (offset < 0) {
            offset = 1;
        }
    }

    void draw() {
        if (redGradient) {
            drawGradient(color(152, 1, 20), color(255, 204, 204)); // Rojo fuerte a rosa pastel
        } else {
            drawGradient(color(255, 204, 204), color(152, 1, 20)); // Rosa pastel a rojo fuerte
        }
    }

    void drawGradient(color startColor, color endColor) {
        for (int y = 0; y < height; y++) {
            float inter = map(y + offset * height, 0, height, 0, 1);
            color c = lerpColor(startColor, endColor, inter);
            stroke(c);
            line(0, y, width, y);
        }
    }

    void toggleColor() {
        redGradient = !redGradient;
    }

    void setMoveUp(boolean state) {
        moveUp = state;
    }

    void setMoveDown(boolean state) {
        moveDown = state;
    }
}
