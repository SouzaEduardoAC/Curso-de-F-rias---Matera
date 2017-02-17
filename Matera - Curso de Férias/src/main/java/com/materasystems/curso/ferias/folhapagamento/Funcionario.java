package com.materasystems.curso.ferias.folhapagamento;

/**
 * Created by eduardo on 24/01/17.
 */
public class Funcionario {
    double calcularComissao(Comissionado comissionado, double valorVenda){
       return comissionado.getComissao(valorVenda);
    }
}
