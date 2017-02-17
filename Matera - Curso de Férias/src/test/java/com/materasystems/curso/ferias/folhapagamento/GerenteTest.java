package com.materasystems.curso.ferias.folhapagamento;

import org.junit.Assert;
import org.junit.Test;

/**
 * Created by eduardo on 24/01/17.
 */
public class GerenteTest {
    Funcionario funcionario = new Gerente();
    @Test
    public void deveCalcularPercentual(){
        double result = funcionario.calcularComissao((Gerente)funcionario, 200.0);
        Assert. assertEquals(20d, result, 0);
    }
}
