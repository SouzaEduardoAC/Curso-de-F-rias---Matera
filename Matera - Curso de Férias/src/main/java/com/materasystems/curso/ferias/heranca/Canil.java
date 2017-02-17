package com.materasystems.curso.ferias.heranca;

/**
 * Created by eduardo on 23/01/17.
 */
public class Canil {
    public static void main(String[] args){
        Cachorro c1 = new Cachorro();
        c1.latir();

        Cachorro pastor = new PastorAlemao();
        pastor.latir();

        ((PastorAlemao) pastor).morder();

        PastorAlemao pastor2 = (PastorAlemao) pastor;
        pastor2.morder();
        pastor2.latir();

        Poodle poodle = new Poodle();
        poodle.lamber();

        Cachorro cachorro = new Cachorro();

        cachorro = poodle;
        cachorro = pastor;

        cachorro.latir();
    }
}
