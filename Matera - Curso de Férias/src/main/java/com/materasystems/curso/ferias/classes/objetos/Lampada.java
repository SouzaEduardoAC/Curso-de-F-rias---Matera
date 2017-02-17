package com.materasystems.curso.ferias.classes.objetos;

public class Lampada {
	boolean ligada;
	
	void ligar(){
		if(!ligada)
			ligada = true;
		else
			System.out.println("Lâmpada já está ligada");
	}
	
	void desligar(){
		if(ligada)
			ligada = false;
		else
			System.out.println("Lâmpada já está desligada");
	}
	
}
