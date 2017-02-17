package com.materasystems.curso.ferias.folhapagamento;

import org.junit.Assert;
import org.junit.Test;

/**
 * Created by eduardo on 24/01/17.
 */
public class VendedorTest {
    Funcionario funcionario = new Vendedor();
    @Test
    public void deveCalcularComissao(){
        double result = funcionario.calcularComissao((Vendedor)funcionario, 200.0);
        Assert.assertEquals(10.0, result,0);
    }
}
