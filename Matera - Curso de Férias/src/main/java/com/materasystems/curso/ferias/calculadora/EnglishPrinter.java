package com.materasystems.curso.ferias.calculadora;

/**
 * Created by eduardo on 23/01/17.
 */
public class EnglishPrinter extends OutputPrinter {
    @Override
    public String print(double resultado){ return String.format("Result is: %s", resultado); }
}
