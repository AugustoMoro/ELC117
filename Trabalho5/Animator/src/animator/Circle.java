package animator;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Point;
import static java.lang.Math.cos;
import static java.lang.Math.sin;

/**
 *
 * @author Augusto
 */
public class Circle {
    private Point pos;
    private int raio;
    private String path;
    private Point origem;
    private int lar;
    private int alt;
    
    public Circle(Point pos, String path, Dimension dim){
        if(pos.x<100)
            pos.x = 100;
        if(pos.y<100)
            pos.y = 100;
        this.pos = pos;
        this.raio = 50;
        this.path = path;
        this.origem = new Point(pos.x, pos.y);
        this.lar = dim.width;
        this.alt = dim.height;
    }
    
    void desenha(Graphics g){
        g.setColor(Color.red);
        g.fillOval(pos.x, pos.y, raio, raio);
    }

    public Point getPos() {
        return pos;
    }
    
    void move(double ang){
        String a = "Line";
        String b = "Circle";
        String c = "Zoom";
        String d = "Movimento4";
        if(path == a){
            pos.x += 2;
            if(pos.x>lar)
                pos.x = 0;
        }
        if(path == b){
           pos.x = (int) (origem.x + 50 * cos(ang));
           pos.y = (int) (origem.y + 50 * sin(ang));
        }
        if(path == c){
            raio+=2;
            if(raio>=100)
                raio = 50;
        }
        if(path == d){
            pos.x += 2;
            if(pos.x>=lar){
                pos.x = 0;
                pos.y += 100;
                if(pos.y>=alt)
                    pos.y = 50;
            }    
        }
        
    }
}
