//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Miguel Angel Reyes on 18/09/16.
//  Copyright © 2016 Miguel Angel Reyes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var vista: UIView!
    @IBOutlet weak var etiquetaHamburguesa: UILabel!
    @IBOutlet weak var etiquetaPais: UILabel!
    var paises = ColeccionDePaises()
    var hamburguesas = ColeccionDeHamburguesa()
    var colores = Colores()
    
    @IBAction func obtenerHamburguesa() {
        etiquetaHamburguesa.text = "Hamburguesa : " + hamburguesas.obtenHamburguesa();
        etiquetaPais.text = "Pais : " + paises.obtenPais();
        vista.backgroundColor = colores.obtenColor()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

