package com.materasystems.curso.ferias.folhapagamento;

/**
 * Created by eduardo on 24/01/17.
 */
public class Gerente extends Funcionario implements Comissionado {
    @Override
    public double getComissao(double valorVenda) {
        double valorComissao = valorVenda * 0.1;
        System.out.println("Comissão de Gerente: 10%, valor sobre venda: " + valorComissao);
        return valorComissao;
    }
}
