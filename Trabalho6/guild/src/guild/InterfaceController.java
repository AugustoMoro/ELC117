/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package guild;

import java.util.ArrayList;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Augusto
 */
public class InterfaceController {
    Interface i;
    ArrayList<Personagem> p;
    InterfaceController(Interface a){
        p = new ArrayList<Personagem>();
    }
  
    public void add_person_array(){
        Personagem x = new Personagem(i.getJogador().getText(), i.getJogador().getText(), i.getRaca().getSelectedItem().toString(), i.getClasse().getSelectedItem().toString(), (int)i.getLevel_person().getValue(), i.getProfissao().getSelectedItem().toString(), (int)i.getLevel_prof().getValue(), i.getEspecialidade().getSelectedItem().toString(), i.getHorario().getText());
        p.add(x);
    }
    
    
}
