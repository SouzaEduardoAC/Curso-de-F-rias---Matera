package com.materasystems.curso.ferias.listaencadeada;

import org.junit.Assert;
import org.junit.Test;

import java.util.Collections;

/**
 * Created by eduardo on 25/01/17.
 */
public class ListaEncadeadaTest {
    ListaEncadeada lista = new ListaEncadeada();

    @Test
    public void deveAdicionar(){
        lista.adicionar("wtf");
        Assert.assertEquals("wtf",lista.elemento.bla);
    }

    @Test
    public void deveRemover(){
        lista.adicionar("wtf");
        lista.adicionar("UHU");
        lista.adicionar("FUCK YEAH");
        lista.remover(1);
        lista.getSize();
        Assert.assertEquals(false,lista.contem("UHU"));
    }

    @Test
    public void deveImprimir(){
        lista.imprimir();
    }

    @Test
    public void deveConter(){
        lista.adicionar("wtf");
        Assert.assertEquals(true,lista.contem("wtf"));
    }

    @Test
    public void naoDeveConter(){
        Assert.assertEquals(false,lista.contem("Wtf"));
    }
}
