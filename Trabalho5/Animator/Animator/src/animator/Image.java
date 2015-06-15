package animator;

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.image.BufferedImage;
import static java.lang.Math.cos;
import static java.lang.Math.sin;

// Uma imagem na animacao.
class Image {

    static void draw() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private BufferedImage img;
    private Point pos;
    private String path;
    private Point origem;
    private int lar;
    private int alt;
    
    
    public Image(Point pos, BufferedImage img, String path, Dimension dim) {
        if(pos.x<100)
            pos.x = 100;
        if(pos.y<100)
            pos.y = 100;
        this.pos = new Point(pos.x, pos.y);
        this.img = img;
        this.path = path;
        this.origem = new Point(pos.x, pos.y);
        this.lar = dim.width;
        this.alt = dim.height;
        
    }

    public Point getPos() {
        return pos;
    }
    
    public void draw(Graphics g) {
        g.drawImage(img, (int) pos.x, (int) pos.y, null);
    }
    
    // Move a imagem de acordo segundo a trajetoria selecionada.
    // O codigo abaixo eh somente um teste e precisa ser substituido.
    public void move(double ang) {
       String a = "Line";
       String b = "Circle";
       if(path == a){
           pos.x += 2;
           if(pos.x>(lar-100))
               pos.x = 0;
       }
       if(path == b){
           pos.x = (int) (origem.x + 50 * cos(ang));
           pos.y = (int) (origem.y + 50 * sin(ang));
       }
    }
}
