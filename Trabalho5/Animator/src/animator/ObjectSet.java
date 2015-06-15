package animator;

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.image.BufferedImage;
import static java.lang.Math.cos;
import static java.lang.Math.sin;
import java.util.Random;

// Conjunto de objetos da animacao.
class ObjectSet {
    
    private Image[] images;
    private Rectangle[] r1;
    private Circle[] c1;
    private Star[] s1;
    private Random rand = new Random();
    double ang = 0;
   
    // Adiciona objetos da classe Image ao ObjectSet.
    // O codigo abaixo eh somente um teste e precisa ser substituido.
    void addImages(int n, Dimension dim, BufferedImage image, String path) {
        images = new Image[n];
        for (int i = 0; i < images.length; i++) {
            Point p = new Point(rand.nextInt(dim.width - 100),rand.nextInt(dim.height - 100));
            images[i] = new Image(p, image, path, dim);
        }
    }
    
    // Adiciona objetos da classe Star ao ObjectSet.
    // O codigo abaixo eh somente um teste e precisa ser substituido.
    void addStars(int n, Dimension dim, String path) {
        s1 = new Star[n];
        for(int i=0; i<s1.length; i++){
            Point p = new Point(rand.nextInt(dim.width - 100),rand.nextInt(dim.height - 100));
            s1[i] = new Star(p, dim, path);
        }
    }
    
    // Adiciona objetos da classe Star ao ObjectSet.
    // O codigo abaixo eh somente um teste e precisa ser substituido.
    void addRectangles(int n, Dimension dim, String path) {
        r1 = new Rectangle[n];
        for(int i=0; i<r1.length; i++){
            Point p = new Point(rand.nextInt(dim.width - 100),rand.nextInt(dim.height - 100));
            r1[i] = new Rectangle(p, path, dim);
        }
    }
    
    // Adiciona objetos da classe Star ao ObjectSet.
    // O codigo abaixo eh somente um teste e precisa ser substituido.
    void addCircles(int n, Dimension dim, String path) {
        c1 = new Circle[n];
        for(int i=0; i<c1.length; i++){
            Point p = new Point(rand.nextInt(dim.width - 100),rand.nextInt(dim.height - 100));
            c1[i] = new Circle(p, path, dim);
        }
    }
    
    // Desenha cada um dos objetos da animacao.
    // O codigo abaixo eh somente um teste e precisa ser substituido.
    void drawAll(Graphics g) {
        if(images!=null){
            for(int i = 0; i<images.length; i++){
                images[i].draw(g);
            }
        }
        if(r1!=null){
            for(int i = 0; i<r1.length; i++){
                r1[i].desenha(g);
            }
        }
        if(c1!=null){
            for(int i=0; i<c1.length; i++){
                c1[i].desenha(g);
            }
        }
        if(s1!=null){
            for(int i=0; i<s1.length; i++){
                s1[i].desenha(g);
            }
        }
    }

    // Move cada um dos objetos da animacao.
    // O codigo abaixo eh somente um teste e precisa ser substituido.
    void moveAll() {
        if(images!=null){
            for(int i = 0; i<images.length; i++){
                images[i].move(ang);
            }
        }
        
        if(r1!=null){
            for(int i=0; i<r1.length; i++){
                r1[i].move(ang);
            }
        }
        if(c1!=null){
            for(int i=0; i<c1.length; i++){
                c1[i].move(ang);
            }
        }
        if(s1!=null){
            for(int i=0; i<s1.length; i++){
                s1[i].move(ang);
            }
        }
        ang += 0.1;
        if(ang>=(2*Math.PI))
            ang = 0;
    }
}
