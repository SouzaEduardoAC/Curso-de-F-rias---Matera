package com.materasystems.curso.ferias.folhapagamento;

import org.junit.Assert;
import org.junit.Test;

/**
 * Created by eduardo on 24/01/17.
 */
public class CaixaTest {
    Funcionario funcionario = new Caixa();
    @Test
    public void deveCalcularPercentual(){
        double result = funcionario.calcularComissao((Caixa)funcionario, 200.0);
        Assert.assertEquals(4.0, result, 0);
    }
}
