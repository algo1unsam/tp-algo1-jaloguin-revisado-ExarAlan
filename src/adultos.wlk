import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	
	method serAsustadoPor(chico){
		self.caramelosAEntregar(chico)
		tolerancia-=1
	}
	
	method caramelosAEntregar(chico){
		if (tolerancia<chico.capacidadSusto()){
			chico.recibirCaramelos(chico.capacidadSusto()-tolerancia)
			return  chico.capacidadSusto()-tolerancia
		}
		else
		{
			return 0
		}
	}

}
