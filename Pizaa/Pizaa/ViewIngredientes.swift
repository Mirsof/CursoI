//
//  ViewIngredientes.swift
//  Pizaa
//
//  Created by Miguel Angel Reyes on 13/11/16.
//  Copyright © 2016 Miguel Angel Reyes. All rights reserved.
//

import UIKit

class ViewIngredientes: UIViewController {
    @IBOutlet weak var checkJamon: UISwitch!
    @IBOutlet weak var checkPeperoni: UISwitch!
    @IBOutlet weak var checkPina: UISwitch!
    @IBOutlet weak var checkQueso: UISwitch!
    @IBOutlet weak var checkSalchica: UISwitch!
    
    @IBOutlet weak var checkAnchoa: UISwitch!
    @IBOutlet weak var checkPavo: UISwitch!
    var orden = DatosOrden()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewConfirmacion = segue.destinationViewController as! ViewConfirmacion
        viewConfirmacion.orden = self.orden
        var total:Int = 0
        var ingredientes = ""
        if checkJamon.on == true {
            ingredientes  += "Jamon";
            total = total + 1
        }
        if checkPeperoni.on == true {
            ingredientes  += " Peperoni";
            total = total + 1
        }
        if checkPina.on == true {
            ingredientes  += " Piña";
            total = total + 1
        }
        if checkQueso.on == true {
            ingredientes  += " Extra queso";
            total = total + 1
        }
        if checkAnchoa.on == true {
            ingredientes  += " Anchoas";
            total = total + 1
        }
        if checkPavo.on == true {
            ingredientes  += " Pavo";
            total = total + 1
        }
        if checkSalchica.on == true {
            ingredientes  += " Salchicas";
            total = total + 1
        }
        viewConfirmacion.orden.totalIngredientes = total
        viewConfirmacion.orden.Ingredientes = ingredientes
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
