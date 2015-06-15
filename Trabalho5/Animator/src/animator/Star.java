package animator;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.Polygon;
import static java.lang.Math.cos;
import static java.lang.Math.sin;

/**
 *
 * @author Augusto
 */
public class Star {
    private int raio1;
    private int raio2;
    private int[] x;
    private int[] y;
    private int[] x1;
    private int[] y1;
    private String path;
    private Point pos;
    private Point origem;
    private Dimension dim;
    
    public Star(Point centre, Dimension dim, String path){
        this.raio1 = 30;
        this.raio2 = 60;
        this.x = new int[3];
        this.y = new int[3];
        this.x1 = new int[10];
        this.y1 = new int[10];
        if(centre.x<100)
            centre.x = 100;
        if(centre.y<100)
            centre.y = 100;
        this.pos = new Point(centre.x, centre.y);
        this.path = path;
        this.origem = new Point(centre.x, centre.y);
        this.dim = new Dimension(dim.width, dim.height);
        
    }
    
    void desenha(Graphics g){
        double ang = Math.PI/5;
        int t = 0;
        for(int i=0; i<5; i++){
            x[0] = (int) ((raio1 * cos(ang)) + pos.x);
            y[0] = (int) ((raio1 * sin(ang)) + pos.y);
            x1[t] = x[0];
            y1[t] = y[0];
            t++;
            ang+=Math.PI/5;
            x[1] = (int) ((raio2 * cos(ang)) + pos.x);
            y[1] = (int) ((raio2 * sin(ang)) + pos.y);
            ang+=Math.PI/5;
            x[2] = (int) ((raio1 * cos(ang)) + pos.x);
            y[2] = (int) ((raio1 * sin(ang)) + pos.y);
            x1[t] = x[2];
            y1[t] = y[2];
            g.setColor(Color.blue);
            g.fillPolygon(x, y, 3);
        }
        g.fillPolygon(x1, y1, 5);
    }
    
    void move(double ang){
        String a = "Line";
        String b = "Circle";
        String c = "Zoom";
        String d = "Movimento4";
        if(path == a){
            pos.x += 2;
            if(pos.x>=550){
                pos.x = 50;
            }
        }
        if(path == b){
           pos.x = (int) (origem.x + 50 * cos(ang));
           pos.y = (int) (origem.y + 50 * sin(ang));
        }
        if(path == c){
            raio1+=2;
            raio2+=4;
            if(raio2>=120){
                raio2 = 60;
                raio1 = raio2/2;
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
