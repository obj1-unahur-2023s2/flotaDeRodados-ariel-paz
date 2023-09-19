class ChevroletCorsa {
	var property color
	method capacidad() = 4
	method velocidad() = 150
	method peso() = 1300
}

class RenaultKwid {
	const property tanqueAdicional
	method color() = "azul"
	method capacidad() = if (tanqueAdicional) 3 else 4
	method velocidad() = if (tanqueAdicional) 120 else 110
	method peso() = if (tanqueAdicional) 1350 else 1200
}

object Trafic {
	var property interior
	var property motor
	method capacidad() = interior.capacidad()
	method velocidad() = motor.velocidad()
	method peso() = 4000 + motor.peso() + interior.peso()
	method color() = "blanco"
	method configurar(unInterior, unMotor) {
		interior = unInterior
		motor = unMotor
	}
}

object motorBataton{
	method peso() = 500
	method velocidad() = 80
}

object motorPulenta{
	method peso() = 800
	method velocidad() = 130
}

object interiorComodo{
	method peso() = 700
	method capacidad() = 5
}

object interiorPopular{
	method peso() = 1000
	method capacidad() = 12
}

class AutoEspecial {
	var property capacidad
	var property velocidad
	var property peso
	var property color
}