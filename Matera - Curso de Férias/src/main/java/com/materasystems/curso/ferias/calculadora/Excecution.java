package com.materasystems.curso.ferias.calculadora;

import jdk.internal.org.objectweb.asm.commons.GeneratorAdapter;

import static com.materasystems.curso.ferias.calculadora.Operation.*;
/**
 * Created by eduardo on 23/01/17.
 */
public class Excecution {
    public static void main(String[] args){
        Calculator calculator = new Calculator(Calculator.OPERATIONS.DIVISION);
        calculator.calculate(20.5, 30.8);
        OutputPrinter outputPrinter = new EnglishPrinter();
        System.out.println("Output EnumOnly");
        DIVISION.calculate(20.5,30.8, outputPrinter);
        final double calculate = MULTIPLICATION.calculate(10.1, 20.1);
        System.out.print(calculate);
    }
}
