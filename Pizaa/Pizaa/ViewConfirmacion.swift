//
//  ViewConfirmacion.swift
//  Pizaa
//
//  Created by Miguel Angel Reyes on 13/11/16.
//  Copyright © 2016 Miguel Angel Reyes. All rights reserved.
//

import UIKit

class ViewConfirmacion: UIViewController {

    @IBOutlet weak var labelTamanio: UILabel!
    @IBOutlet weak var labelMasa: UILabel!
    @IBOutlet weak var labelQueso: UILabel!
    @IBOutlet weak var labelIngredientes: UILabel!
    var orden = DatosOrden()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var btnConfirmar: UIButton!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        labelTamanio.text = orden.TamanioPizza;
        labelMasa.text = orden.TipoMasa;
        labelQueso.text =  orden.TipoQueso
        labelIngredientes.text = orden.Ingredientes
        
        if orden.totalIngredientes > 0 && orden.totalIngredientes <= 5{
            btnConfirmar.hidden = false
        }else{
            btnConfirmar.hidden = true
            labelIngredientes.text =  orden.Ingredientes + "\nDebe seleccionar de 1 a 5 ingredientes"
        }
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
