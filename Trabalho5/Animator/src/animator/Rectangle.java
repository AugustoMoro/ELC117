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
public class Rectangle {
    private Point pos;
    private int lar;
    private int alt;
    private String path;
    private Point origem;
    private Dimension dim;
    
    public Rectangle(Point pos, String path, Dimension dim){
        if(pos.x<100)
            pos.x = 100;
        if(pos.y<100)
            pos.y = 100;
        this.pos = new Point(pos.x, pos.y);
        this.lar = 100;
        this.alt = 50;
        this.path = path;
        this.origem = new Point(pos.x, pos.y);
        this.dim = new Dimension(dim.width, dim.height);
    }
    
    void desenha(Graphics g){
        g.setColor(Color.red);
        g.fillRect(pos.x, pos.y, lar, alt);
    }

    public Point getPos() {
        return pos;
    }
    
    public void move(double ang){
        String a = "Line";
        String b = "Circle";
        String c = "Zoom";
        String d = "Movimento4";
        if(path == a){
            pos.x += 2;
            if(pos.x > dim.width){
                pos.x = 0;
            }
        }
        if(path == b){
           pos.x = (int) (origem.x + 50 * cos(ang));
           pos.y = (int) (origem.y + 50 * sin(ang));
        }
        if(path == c){
            lar+=2;
            alt+=1;
            if(lar>200){
                lar-=100;
                alt-=50;
            }
        }
        if(path == d){
            pos.x += 2;
            if(pos.x>=dim.width){
                pos.x = 0;
                pos.y += 100;
                if(pos.y>=dim.height)
                    pos.y = 50;
            }
        }
    }
    
}
