import remiseras.*
import clientes.*

object oficina {
	
	var primeraRemisera  
	var segundaRemisera
	
	method primeraRemisera() = primeraRemisera
	method segundaRemisera() = primeraRemisera
	method asignarRemiseras(remisera1, remisera2){
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	method cambiarPrimerRemiseraPor(remisera){primeraRemisera = remisera}
	method cambiarSegundoRemiseraPor(remisera){segundaRemisera = remisera}
	method intercambiarRemiseras(){self.asignarRemiseras(segundaRemisera, primeraRemisera)}
	method remiseraElegidaParaViaje(cliente, kms){
		 if(primeraRemisera.cobrar(cliente, kms) - segundaRemisera.cobrar(cliente, kms) >= 30){return segundaRemisera} else{return primeraRemisera}
	}
	
}
