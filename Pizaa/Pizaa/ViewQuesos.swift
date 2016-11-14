//
//  SeleccionTamanioPizzaViewViewController.swift
//  Pizaa
//
//  Created by Miguel Angel Reyes on 13/11/16.
//  Copyright © 2016 Miguel Angel Reyes. All rights reserved.
//

import UIKit

class ViewQuesos: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var seleccionQueso: UIPickerView!
    var quesos:[String] = [String]()
    var orden = DatosOrden()
    override func viewDidLoad() {
        super.viewDidLoad()
        quesos = ["Mozarela","Cheddar","Parmesano","Sin queso"];
        self.seleccionQueso.delegate=self
        self.seleccionQueso.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesos[row]
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewIngredientes = segue.destinationViewController as! ViewIngredientes
        viewIngredientes.orden = self.orden
        viewIngredientes.orden.TipoQueso = quesos[seleccionQueso.selectedRowInComponent(0)]
    }
}
