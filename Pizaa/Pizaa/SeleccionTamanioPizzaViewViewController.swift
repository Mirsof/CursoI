//
//  SeleccionTamanioPizzaViewViewController.swift
//  Pizaa
//
//  Created by Miguel Angel Reyes on 13/11/16.
//  Copyright © 2016 Miguel Angel Reyes. All rights reserved.
//

import UIKit

class SeleccionTamanioPizzaViewViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var seleccion: UIPickerView!
    var tamanios:[String] = [String]()
    var orden = DatosOrden()
    override func viewDidLoad() {
        super.viewDidLoad()
        tamanios = ["Chica","Mediana","Grande"];
        self.seleccion.delegate=self
        self.seleccion.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamanios.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamanios[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewMasa = segue.destinationViewController as! ViewMasa
        viewMasa.orden = self.orden
        viewMasa.orden.TamanioPizza = tamanios[seleccion.selectedRowInComponent(0)]

    }
}
