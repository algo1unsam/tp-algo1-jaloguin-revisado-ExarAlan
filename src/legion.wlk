import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = []
	
	method agregarIntegrantes(_integrantes){
		integrantes.addAll(_integrantes)
		integrantes.withoutDuplicates()
	}
	
	method Integrantes(){
		return integrantes
	}
	method lider(){
		 return integrantes.max({ew => ew.capacidadSusto()})
	}
	
	method capacidadSusto(){
		return integrantes.sum({ew => ew.capacidadSusto()})
	}
	
	method caramelos(){
		return integrantes.sum({ew => ew.caramelos()})
	}
	
	method recibirCaramelos(_caramelos){
		 integrantes.max({ew => ew.capacidadSusto()}).recibirCaramelos(_caramelos)
	}
	method disfracesTotal(){
		return integrantes.map({ew => ew.disfraces()})
	}
	
}

object barrio{
	var chicos=[]
	
	method chicos(_chicos){
		chicos.addAll(_chicos)
		chicos.withoutDuplicates()
	}
	method chicosConMasCaramelos(valor){
		return chicos.sortedBy({ew, que => ew.caramelos()>que.caramelos()}).take(valor)
	}
	
	method chicos(){
		return chicos
	}
	
	method algunoMuyAsustador(){
		return chicos.any({ew => ew.capacidadSusto()>42})
	}	
	
	
}

