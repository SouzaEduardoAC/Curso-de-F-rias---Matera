package com.materasystems.curso.ferias.folhapagamento;

/**
 * Created by eduardo on 24/01/17.
 */
public class Pagamento {
    public static void main(String[] args){
        FolhaDePagamento folhaPagamento = new FolhaDePagamento();
        folhaPagamento.calcularComissao(new Gerente(), 200.0);
        folhaPagamento.calcularComissao(new Limpeza(), 200.0);
        folhaPagamento.calcularComissao(new Caixa(), 200.0);
    }
}
