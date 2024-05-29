class Grilla {
    PImage img;
    float imgScale = 1.0; // Escala inicial de la imagen
    float rotationAngle = 0; // Ángulo de rotación de la imagen

    Grilla(String imagePath) {
        img = loadImage(imagePath); // Carga la imagen desde la ruta proporcionada
    }

    void draw() {
        float scaledWidth = img.width * imgScale;
        float scaledHeight = img.height * imgScale;
        pushMatrix();
        translate(width / 2, height / 2);
        rotate(rotationAngle);
        image(img, -scaledWidth / 2, -scaledHeight / 2, scaledWidth, scaledHeight);
        popMatrix();
    }

    void scaleUp() {
        imgScale *= 1.1;
    }

    void scaleDown() {
        imgScale *= 0.9;
    }

    void rotateLeft() {
        rotationAngle -= radians(10);
    }

    void rotateRight() {
        rotationAngle += radians(10);
    }
}
