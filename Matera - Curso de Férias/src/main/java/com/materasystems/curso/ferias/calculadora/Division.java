package com.materasystems.curso.ferias.calculadora;

/**
 * Created by eduardo on 23/01/17.
 */
public class Division extends MathOperation {
    @Override
    public double calculate(double a, double b) {
        if (b != 0)
            return a / b;

        System.out.print("There is not division by 0, result will be set 0 as default");
        return 0;
    }
}
