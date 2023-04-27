import clientes.*

object roxana{
	
	method cobrar(unCliente, kilometros) = unCliente.precio() * kilometros
}

object gabriela{
	
	method cobrar(unCliente, kilometros) = (unCliente.precio()*1.2) * kilometros
}

object mariela{
	
	method cobrar(unCliente, kilometros) = (unCliente.precio() * kilometros).max(50)
}

object juana{
	
	method cobrar(unCliente, kilometros) = if (kilometros <= 8) {100} else {200}
}

object lucia{
	
	var cubre = juana
	
	method cubre() = cubre
	method cubrirA(unaRemisera){cubre = unaRemisera}
	method cobrar(unCliente, kilometros) = cubre.cobrar(unCliente, kilometros)
}

