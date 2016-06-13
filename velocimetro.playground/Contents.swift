//: Playground - Velocimetro: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

var velocimetro = Velocidades.VelocidadBaja

class Auto {
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena:String)  {
        if velocidad.rawValue == 0 {
            self.velocidad = Velocidades.VelocidadBaja
        } else if velocidad.rawValue == 20 {
            self.velocidad = Velocidades.VelocidadMedia
        } else if velocidad.rawValue == 50 {
            self.velocidad = Velocidades.VelocidadAlta
        } else if velocidad.rawValue == 120 {
            self.velocidad = Velocidades.VelocidadMedia
        }
        return (velocidad.rawValue, String(velocidad))
    }
}

var miAuto = Auto()
print("\(miAuto.velocidad.rawValue),  \(miAuto.velocidad)")
for value in 1...20 {
    var nuevaVelocidad = miAuto.cambioDeVelocidad()
    print("\(nuevaVelocidad.0), \(nuevaVelocidad.1)")
}

