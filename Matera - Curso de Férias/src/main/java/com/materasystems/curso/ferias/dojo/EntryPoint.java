package com.materasystems.curso.ferias.dojo;

/**
 * Created by eduardo on 23/01/17.
 */
public class EntryPoint {
    public static void main(String[] args){
        if (args.length < 2)
        {
            System.out.println("Número de argumentos inválidos");
            return;
        }

        String jogada1String = args[0];
        String jogada2String = args[1];

        JokenPo jogada1 = JokenPo.valueOf(jogada1String);
        JokenPo jogada2 = JokenPo.valueOf(jogada2String);

        String resultado = jogada1.desafiar(jogada2);

        System.out.println("EMPATE".equals(resultado.toUpperCase()) ? "Empate" : "O vencedor é: " + resultado);
    }
}
