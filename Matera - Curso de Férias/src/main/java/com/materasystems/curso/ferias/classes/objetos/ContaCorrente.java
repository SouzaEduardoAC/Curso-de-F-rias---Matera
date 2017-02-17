package com.materasystems.curso.ferias.classes.objetos;

public class ContaCorrente {

	double saldo;
	boolean especial;
	double limite;
	
	double consultaSaldo() {
		if (especial)
			return saldo + limite;
		return saldo;
	}
	
	int realizaDeposito(double d) {
		if (d < 0)
			return -1;
		saldo += d;
		return 0;
	}
	
	int realizaSaque(double d) {
		if (d > 0){
			if (!especial && d > (saldo + limite))
				return -2;
		}else
			return -1;
			
		saldo -= d;
		return 0;
	}
	
	boolean usandoLimite() {
		if (saldo>=0)
			return false;
		return true;
	}

}
