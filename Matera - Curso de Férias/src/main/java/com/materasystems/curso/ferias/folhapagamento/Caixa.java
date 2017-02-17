package com.materasystems.curso.ferias.folhapagamento;

/**
 * Created by eduardo on 24/01/17.
 */
public class Caixa extends Funcionario implements Comissionado{
    @Override
    public double getComissao(double valorVenda) {
        double valorComissao = valorVenda * 0.02;
        System.out.println("Caixa recebe comissão de: 2%, valor sobre venda: " + valorComissao);
        return valorComissao;
    }
}
