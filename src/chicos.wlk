import elementos.*

object macaria {
	var nivelIra= 10
	var disfraces = [ ]
	var caramelos = 0
	
	method disfrazar(disfraz){
		disfraces.add(disfraz)		
	}
	
	method dejarDeUsarMenosEfectivo(){				
		disfraces.remove(disfraces.min({ew => ew.nivelSusto()}))
	}
	method disfraces(){
		return disfraces
	}
	method capacidadSusto(){
		return nivelIra+disfraces.sum({ew => ew.nivelSusto()})
	}
	
	method recibirCaramelos(valor){
		caramelos=valor
		caramelos-=caramelos.div(4)
	}
	method caramelos(){
		return caramelos
	}
	
	method enojar(){
		nivelIra+=1
	}
}

object pancracio {
	var disfraz = [mascaraDracula]
	var base=4
	
	var caramelos=0
	method capacidadSusto(){
		return base+disfraz.sum({ew => ew.nivelSusto()})
	}
	method disfrazar(_disfraz){
		disfraz.clear()
		disfraz.add(_disfraz)		
	}
	method quitarDisfraz(_disfraz){
		base+=2
	}
	method caramelos(){
		return caramelos
	}
	
	method recibirCaramelos(valor){
		caramelos=valor
	}
	
	method disfraces(){
		return disfraz
	}

}

object carlos{
		
	}
	// El chico inventado .

object pedro {
	var disfraces =[]
	var caramelos = 0
	method disfrazar(disfraz){
		disfraces.add(disfraz)		
	}
	
	method capacidadSusto(){
		return disfraces.sum({ew => ew.nivelSusto()})
	}
	
	method recibirCaramelos(valor){
		caramelos=valor
	}
	
	method caramelos(){
		return caramelos
	}
	
	method disfraces(){
		return disfraces
	}
	
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}

}

