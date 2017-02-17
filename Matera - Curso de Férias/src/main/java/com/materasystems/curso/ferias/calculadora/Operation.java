package com.materasystems.curso.ferias.calculadora;

/**
 * Created by eduardo on 23/01/17.
 */
public enum Operation {
    MULTIPLICATION { @Override double calculate(double valueA, double valueB) {
            return valueA * valueB; }
    },
    DIVISION { @Override double calculate(double valueA, double valueB) {
            return valueB == 0 ? 0 : valueA / valueB; }
    },
    SUM { @Override double calculate(double valueA, double valueB) {
            return valueA + valueB; }
    },
    SUBTRACTION { @Override double calculate(double valueA, double valueB) {
            return valueA - valueB; }
    },
    MOD { @Override double calculate(double valueA, double valueB) {
            return valueB == 0 ? 0 : valueA % valueB; }
    };

    abstract double calculate(double valueA, double valueB);

    public String calculate(double valueA, double valueB, OutputPrinter outputprinter){
        return outputprinter.print(calculate(valueA, valueB));
    }
}
