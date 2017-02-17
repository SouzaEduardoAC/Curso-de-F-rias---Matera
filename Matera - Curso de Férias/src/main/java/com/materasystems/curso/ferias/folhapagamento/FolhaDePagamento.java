package com.materasystems.curso.ferias.folhapagamento;

/**
 * Created by eduardo on 24/01/17.
 */
public class FolhaDePagamento {

    public void calcularComissao(Funcionario funcionario, double valorVenda) {
        funcionario.calcularComissao((Comissionado) funcionario, valorVenda);
    }
    public void calcularComissao(Limpeza limpeza, double valorVenda){
        System.out.println("Limpeza não possuí comissão");
    }

}
