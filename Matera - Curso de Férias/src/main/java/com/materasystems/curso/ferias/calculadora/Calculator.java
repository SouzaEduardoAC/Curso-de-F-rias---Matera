package com.materasystems.curso.ferias.calculadora;

import sun.misc.MessageUtils;

/**
 * Created by eduardo on 23/01/17.
 */
public class Calculator {
    public enum OPERATIONS { SUM, DIVISION, MOD, MULTIPLICATION, SUBTRACTION };
    static OPERATIONS op;
    static OutputPrinter outputPrinter = new OutputPrinter();

    public Calculator(OPERATIONS OPERATION)
    {
        op = OPERATION;
    }

    public static void calculate(double a, double b){
        MathOperation operation = new Sum();
        switch (op){
            case SUM:
                double result = operation.calculate(1, 2);
                outputPrinter.print(result);
                break;
            case DIVISION:
                operation = new Division();
                result = operation.calculate(10,2);
                outputPrinter = new EnglishPrinter();
                outputPrinter.print(result);
                break;
            case SUBTRACTION:
                operation = new Subtraction();
                result = operation.calculate(2,3);
                outputPrinter.print(result);
                break;
            case MULTIPLICATION:
                operation = new Multiplication();
                result = operation.calculate(20.9,3.8);
                outputPrinter.print(result);
                break;
            case MOD:
                operation = new Mod();
                result = operation.calculate(25,2);
                outputPrinter = new PortuguesePrinter();
                outputPrinter.print(result);
                break;
            default:
                System.out.print("Not existent");
        }
    }
}
