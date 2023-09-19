class Dependencia {
	var property cantidadEmpleado = 0
	const rodados = []
	
	method agregarAFlota(rodado) {
		rodados.add(rodado)
	}
	
	method quitarDeFlota(rodado) {
		rodados.remove(rodado)
	}
	
	method pesoTotalFlota() = rodados.sum({rod => rod.peso()})
	
	method todosSuperanVelocidad(velocidad) = rodados.all({rod => rod.velocidad() >= velocidad})
	
	method estaBienEquipada() = rodados.size() <= 3 and self.todosSuperanVelocidad(100)
	
	method capacidadTotalEnColor(color) = (self.rodadosDeColor(color)).sum({r=>r.capacidad()})
	
	method rodadosDeColor(color) {
		return rodados.filter({r=>r.color() == color})
	}
	
	method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()
	
	method rodadoMasRapido() {
		if(rodados.isEmpty()){
			self.error("No hay rodados")
		}
		return rodados.max({r=>r.velocidad()})
	}
	
	method capacidadDeLaFlota() = rodados.sum({rod => rod.capacidad()})

	method capacidadFaltante() = 0.max(cantidadEmpleado - self.capacidadDeLaFlota())
	
	method esGrande() = cantidadEmpleado >= 40 and rodados.size() >= 5
}
