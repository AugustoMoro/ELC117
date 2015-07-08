/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package guild;

/**
 *
 * @author Augusto
 */
public class Personagem {
    public String nome_jogador;
    public String nome_personagem;
    public String raca;
    public String classe;
    public int lvl;
    public String profissao;
    public int lvl_profissao;
    public String especialidade;
    public String horario;
    
    Personagem(String nome_j, String nome_p, String raca, String classe, int lvl, String prof, int lvl_prof, String especialidade, String horario){
        this.nome_jogador = nome_j;
        this.nome_personagem = nome_p;
        this.raca = raca;
        this.classe = classe;
        this.lvl = lvl;
        this.profissao = prof;
        this.lvl_profissao = lvl_prof;
        this.especialidade = especialidade;
        this.horario = horario;
    }
    
    public void mostra(){
        System.out.println("Nome do jogador: " + nome_jogador);
        System.out.println("Nome do Personagem: " + nome_personagem);
        System.out.println("Raça: " + raca);
        System.out.println("Classe: " + classe);
        System.out.println("Level: " + lvl);
        System.out.println("Profissão: " + profissao);
        System.out.println("Level da profissão: " + lvl_profissao);
        System.out.println("Especialidade: " + especialidade);
        System.out.println("Dia: " + horario);
        System.out.println("");
        
    }
}
