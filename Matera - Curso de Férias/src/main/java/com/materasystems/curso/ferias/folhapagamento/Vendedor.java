package com.materasystems.curso.ferias.folhapagamento;

/**
 * Created by eduardo on 24/01/17.
 */
public class Vendedor extends Funcionario implements Comissionado {
    @Override
    public double getComissao(double valorVenda) {
        double valorComissao = valorVenda * 0.05;
        System.out.println("Vendedor recebe 5% de comissão, valor sobre venda de: " + valorComissao);
        return valorComissao;
    }
}
