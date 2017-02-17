package com.materasystems.curso.ferias.exceptions;

/**
 * Created by eduardo on 25/01/17.
 */

// 1. Index out of bounds -. Runtime Exception
// 2. Rodou
// 3. Rodou...
// 4. Runtime Exception
// 5. RuntimeException -> Exception, não compila

public class Inicio {
    public static void main(String[] args) {
        System.out.println("inicio");
        try{
            metodoA();
        } catch (RuntimeException e) {
        }
        System.out.println("fim");
        finalizar();
    }

    public static void metodoA(){
        System.out.println("entrou metodoA");
        int[] array = new int[5];
        try{
            for (int i = 0; i <= 7; i++) {
                array[i] = i;
                System.out.println(i);
            }
        } catch (RuntimeException e) {
        }
        System.out.println("saiu metodoA");
    }

    public static void finalizar(){
        throw new RuntimeException("Erro nao checked");
    }
}
