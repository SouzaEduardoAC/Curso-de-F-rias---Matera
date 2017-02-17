package com.materasystems.curso.ferias.calculadora;

import org.junit.Assert;
import org.junit.Test;

import static com.materasystems.curso.ferias.calculadora.Operation.*;

/**
 * Created by eduardo on 24/01/17.
 */
public class OperationTest {
    OutputPrinter outputPrinter = new OutputPrinter();

    @Test
    public void deveSomar(){
        Assert.assertEquals("20.55", SUM.calculate(10.25,10.3,outputPrinter));
    }

    @Test
    public void deveSubtrair(){
        Assert.assertEquals("30.1", SUBTRACTION.calculate(31.0,0.9,outputPrinter));
    }

    @Test
    public void deveMultiplicar(){
        Assert.assertEquals("20.0", MULTIPLICATION.calculate(2,10,outputPrinter));
    }

    @Test
    public void deveDividir(){ Assert.assertEquals("5.0", DIVISION.calculate(50,10,outputPrinter));}

    @Test
    public void deveTrazerResto(){ Assert.assertEquals("1.0",MOD.calculate(21,2,outputPrinter));}

    @Test
    public void divisaoPorZeroResultaZero(){ Assert.assertEquals("0.0", DIVISION.calculate(20,0, outputPrinter));}
}
