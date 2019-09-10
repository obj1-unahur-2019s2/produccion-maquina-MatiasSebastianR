object registroProduccion {
	var produccionPorDia = [53,18,49,62,33]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	
	method produccion() { return produccionPorDia }
	
	method algunDiaSeProdujo(cantidad) { return produccionPorDia.contains ( cantidad ) }
	
	method maximoValorDeProduccion() { return produccionPorDia.max() }
	
	method valorDeProduccionesPares() {	return produccionPorDia.filter({ pd => pd.even() }) }
	
	method valorDeProduccionesParesLargo() {	return produccionPorDia.filter({ pd => pd % 2 == 0 }) }
	
	method produccionEsAcotada(n1,n2) { return produccionPorDia.all ({ pd => pd.between(n1,n2) }) }
	
	method produccionesSuperioresA(cuanto) { return produccionPorDia.filter ({ pd => pd > cuanto }) }
	
	method produccionesSumando(n) { return produccionPorDia.map ({ pd => pd + n }) } 
	
	method totalProducido() { return produccionPorDia.sum() }
	
	method ultimoValorDeProduccion() { return produccionPorDia.last() }
	
	method cantidadProduccionesMayorALaPrimera() { return produccionPorDia.count ({ pd => pd > produccionPorDia.first()   })}
	
}

//El registro debe ser capaz de responder las siguientes consultas:
//- `algunDiaSeProdujo(cantidad)`: indica si el registro incluye al menos un día en el que se produjo, exactamente, la cantidad indicada de piezas.
//- `maximoValorDeProduccion()`: el valor más alto de producción diaria incluido en el registro.
//- `valoresDeProduccionPares()`: los valores pares incluidos, en el mismo orden en que aparecen en el registro.
//- `produccionEsAcotada(n1,n2)`: indica si en cada día de que se tiene registro, la producción se encuentra entre los valores indicados.   
//- `produccionesSuperioresA(cuanto)`: los valores de producción que superan el valor indicado, en el mismo orden en que aparecen en el registro.
//- `produccionesSumando(n)`: la serie que resulta de sumar el valor indicado a cada valor de producción diaria incluido en el registro. 
//- `totalProducido()`: el total de piezas producidas por la máquina, de acuerdo a la información incluida en el registro.
//- `ultimoValorDeProduccion()`: el último valor registrado. 
//- `cantidadProduccionesMayorALaPrimera()`: la cantidad de valores de producción diaria que superan a la producción indicada para el primer día de operación.

//A modo de ejemplo, se indica qué debe responder el registro de producción a varios mensajes, si incluye la producción de seis días con valores 43,18,49,62,33,39.
 
//| mensaje | resultado esperado | 
//| --- | --- |
//| `registroProduccion.algunDiaSeProdujo(49)` | `true` |
//| `registroProduccion.algunDiaSeProdujo(52)` | `false` |
//| `registroProduccion.maximoValorDeProduccion()` | `62` |
//| `registroProduccion.valoresDeProduccionPares()` | `18,62` |
//| `registroProduccion.produccionEsAcotada(10,100)` | `true` |
//| `registroProduccion.produccionEsAcotada(20,100)` | `false` (porque 18 no está en el rango) |
//| `registroProduccion.produccionesSuperioresA(35)` | `53,49,62,39` |
//| `registroProduccion.produccionesSumando(5)` | `48,23,54,67,38,44` |
//| `registroProduccion.totalProducido()` | `244` |
//| `registroProduccion.ultimoValorDeProduccion()` | `39` |
//| `registroProduccion.cantidadProduccionesMayorALaPrimera()` | `2` (los valores 49 y 62) |