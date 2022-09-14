object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var longitud = 2
	method nivelSusto() {
		return longitud*5
	}
	
	method agregarPelos() {
		longitud+=1
	}
	
	method quitarPelos() {
		longitud-=1
	}
}

object mascaraDracula {
	var tamanio = 2
	method nivelSusto() {
		return tamanio*2
	}
	
	

}

object mascaraFrankenstein {
	var tamanio = 11
	method nivelSusto() {
		return tamanio*2
	}
}

object mascaraPolitico {
	var promesas=5
	method nivelSusto() {
		return promesas*2
	}
	
	}

