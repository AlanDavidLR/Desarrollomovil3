import Foundation

func calcularAreaCuadrado(lado: Double) -> Double {
    return lado * lado
}

func calcularAreaRectangulo(base: Double, altura: Double) -> Double {
    return base * altura
}

func calcularAreaTriangulo(base: Double, altura: Double) -> Double {
    return (base * altura) / 2
}

func calcularAreaCirculo(radio: Double) -> Double {
    return Double.pi * radio * radio
}

func mostrarMenu() {
    print("Menu de areas")
    print("1- Area del Cuadrado")
    print("2- Area del Rectangulo")
    print("3- Area del Triangulo")
    print("4- Area del Circulo")
    print("Por favor introduce una opcion (numero):")
}

func obtenerOpcion() -> Int {
    if let input = readLine(), let opcion = Int(input) {
        return opcion
    } else {
        return 0
    }
}

func obtenerDouble() -> Double {
    if let input = readLine(), let valor = Double(input) {
        return valor
    } else {
        return 0.0
    }
}

func calcularArea() {
    mostrarMenu()
    let opcion = obtenerOpcion()
    
    switch opcion {
    case 1:
        print("Introduce el valor del lado:")
        let lado = obtenerDouble()
        let area = calcularAreaCuadrado(lado: lado)
        print("El area del cuadrado es: \(area)")
    case 2:
        print("Introduce el valor del lado 1:")
        let lado1 = obtenerDouble()
        print("Introduce el valor del lado 2:")
        let lado2 = obtenerDouble()
        let area = calcularAreaRectangulo(base: lado1, altura: lado2)
        print("El area del rectangulo es: \(area)")
    case 3:
        print("Introduce el valor de la base:")
        let base = obtenerDouble()
        print("Introduce el valor de la altura:")
        let altura = obtenerDouble()
        let area = calcularAreaTriangulo(base: base, altura: altura)
        print("El area del triangulo es: \(area)")
    case 4:
        print("Introduce el valor del radio:")
        let radio = obtenerDouble()
        let area = calcularAreaCirculo(radio: radio)
        print("El area del circulo es: \(area)")
    default:
        print("Opcion invalida")
    }
}

calcularArea()
