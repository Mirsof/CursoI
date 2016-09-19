//: Playground - noun: a place where people can play

import UIKit



enum Velocidades:Int {
    case Apagado = 0
    case Baja = 20
    case Media = 50
    case Alta = 120
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad :Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        let resultado = (actual:velocidad.rawValue, velocidadEnCadena:String(velocidad))
        switch(velocidad){
        case .Media :
            velocidad = Velocidades.Alta
        case .Apagado :
            velocidad = Velocidades.Baja
        default:
            velocidad = Velocidades.Media
        }
        return resultado
        
    }
}

var prueba = Auto()
for var i = 0 ; i<=20; i++ {
    var cambio = prueba.cambioDeVelocidad()
    print("\(cambio.actual),\(cambio.velocidadEnCadena)")
}