import Foundation


struct Articulo {
    var nombre: String
    var cantidad: Int
}

func registrarArticulo() -> Articulo {
    print("Registrar artículo")
    print("Por favor, ingrese el nombre del artículo:")
    if let nombre = readLine(), !nombre.isEmpty {
        print("Ingrese la cantidad de artículos:")
        if let cantidadString = readLine(), let cantidad = Int(cantidadString) {
            return Articulo(nombre: nombre, cantidad: cantidad)
        }
    }
    print("Datos inválidos. El artículo no pudo ser registrado.")
    return Articulo(nombre: "", cantidad: 0)
}

func mostrarListaArticulos(articulos: [Articulo]) {
    print("Lista de artículos:")
    for (indice, articulo) in articulos.enumerated() {
        print("Artículo \(indice + 1): \(articulo.nombre)")
        print("Cantidad: \(articulo.cantidad)")
    }
}

func consultarArticulos(articulos: [Articulo]) {
    print("Artículos en existencia:")
    for (indice, articulo) in articulos.enumerated() {
        print("Artículo \(indice + 1): \(articulo.nombre)")
        print("Cantidad: \(articulo.cantidad)")
    }
}

func main() {
    var articulos: [Articulo] = []
    
    var opcion: Int?
    repeat {
        print("\nMENU")
        print("1. Registrar artículo")
        print("2. Ver lista de artículos")
        print("3. Consultar artículos en existencia")
        print("4. Salir")
        print("\nElige una opción (número):")
        
        if let input = readLine(), let numero = Int(input) {
            opcion = numero
            
            switch opcion {
            case 1:
                let nuevoArticulo = registrarArticulo()
                articulos.append(nuevoArticulo)
                print("\nArtículo registrado exitosamente.")
            case 2:
                mostrarListaArticulos(articulos: articulos)
            case 3:
                consultarArticulos(articulos: articulos)
            case 4:
                print("\n¡Hasta luego!")
            default:
                print("\nOpción inválida. Por favor, elige una opción válida.")
            }
        } else {
            print("\nOpción inválida. Por favor, elige una opción válida.")
        }
    } while opcion != 4
}

main()
