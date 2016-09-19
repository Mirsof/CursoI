//
//  Datos.swift
//  Hamburguesas
//
//  Created by Miguel Angel Reyes 
//  Copyright © 2016 Miguel Angel Reyes. All rights reserved.
//

import Foundation
import UIKit
class ColeccionDePaises {
 
    let paises:[String] = ["Mexico","Brasil","Colombia","USA","Chile","Cuba","Canada","Paraguay","Portugal","Nigeria","Panama","Japon","Colombia","Belize","Boliivia","India","Iran","Irlanda","Israel","Italia"]
    func obtenPais( )->String {
        return paises[Int(arc4random() % 20)]
    }
}


class ColeccionDeHamburguesa {
    let hamburguesas:[String] = ["Doble","Sencilla","Con Queso","Light","Tocino","Al carbon","Especial","Hamburguesa de Pollo","Angus","New York","Doble Tocino","La matona","Ranchera","1/2 Libra","1 Libra","De Sirloin","Big Mac","Triple con Queso","Western Bacon","Guacamole Bacon"]

    func obtenHamburguesa( )->String  {
        return hamburguesas[Int(arc4random() % 20)]
    }
}

class Colores {
        let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
        UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
        UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
        UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
        UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
        UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    

    func obtenColor( )->UIColor  {
        return colores[Int(arc4random() % 8)]
    }
}





