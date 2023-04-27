object ludmila{
	
	method precio() = 18
}




object anaMaria{
	
	var economiaEstable = true
	
	method economiaEstable() = economiaEstable
	method cambioDeEconomia(){economiaEstable = not economiaEstable} 
	method precio() = if(economiaEstable){30} else{25}
}




object teresa{
	
	var precio = 22
	
	method precio() = precio
	method precioEs(unPrecio){precio = unPrecio}
}




object melina{
	
	var trabajaPara = teresa
	
	method trabajaPara() = trabajaPara
	method nuevaCliente(unCliente){trabajaPara = unCliente}
	method precio() = trabajaPara.precio() -3
}