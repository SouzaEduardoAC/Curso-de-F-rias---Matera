package com.materasystems.curso.ferias.listaencadeada;

/**
 * Created by eduardo on 25/01/17.
 */
public class ListaEncadeada {
    Elemento elemento;
    private int size = 0;

    void adicionar(String valor){
        if (elemento == null){
            elemento = new Elemento();
            elemento.bla = valor;
            elemento.proximo = null;
        }else {
            elemento.proximo = new Elemento();
            elemento.proximo.bla = valor;
            elemento.proximo.proximo = null;
        }
        size++;
    }

    void remover(int indice){
        if (elemento == null)
            return;

        for (int i = 0; i < indice + 1; i++){
            if (indice == i) {
                elemento = elemento.proximo;
            }
        }

        size--;
    }

    void imprimir(){
        if (elemento == null)
            return;

        do {
            System.out.println(elemento.bla);
        }while (elemento.proximo != null);
    }

    boolean contem(String valor){
        if (elemento == null)
            return false;

        do{
            if (elemento.bla.equals(valor))
                return true;
        }while(elemento.proximo != null);

        return false;
    }

    void getSize(){
        System.out.println(size);
    }
}
