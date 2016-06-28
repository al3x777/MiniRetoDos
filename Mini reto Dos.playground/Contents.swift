//Mini Reto Dos

import UIKit

//creacion del enum
enum Velocidades : Int{
    
    case Apagado = 0,VelocidadBaja = 20,VelocidadMedia = 50 ,VelocidadAlta = 120
    
    //init del enum
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}




class Auto{

    var velocidad = Velocidades?()
   
    //init de la clase que llama al init del enum
    init(){
    self.velocidad = Velocidades.init(velocidadInicial: .Apagado)
    }
    
    //funcion que cambia las velocidades retornando una tupla
    func cambioDeVelocidad()-> (actual : Int , velocidadEnCadena : String) {
        var cadena = ""
        switch velocidad!{
        case .Apagado:
            velocidad! = .VelocidadBaja
            cadena = "Velocidad Baja"
        case .VelocidadBaja:
            velocidad! = .VelocidadMedia
            cadena = "Velocidad Media"
        case .VelocidadMedia:
            velocidad! = .VelocidadAlta
            cadena = "Velocidad Alta"
        case .VelocidadAlta:
            velocidad! = .VelocidadMedia
            cadena = "Velocidad Media"
        }
        return (velocidad!.rawValue,cadena)
    }

}
//se crea la instancia de la clase Auto
var auto = Auto()
//antes de cambiarle el valor
print("\(auto.velocidad!.rawValue), \(auto.velocidad!)")
//for que cambia el estado e imprime cada uno de los cambios
for i in 1...10{
    var tupla = auto.cambioDeVelocidad()
    print("\(tupla.actual), \(tupla.velocidadEnCadena)")
}





