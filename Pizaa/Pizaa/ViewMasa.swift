//
//  SeleccionTamanioPizzaViewViewController.swift
//  Pizaa
//
//  Created by Miguel Angel Reyes on 13/11/16.
//  Copyright © 2016 Miguel Angel Reyes. All rights reserved.
//

import UIKit

class ViewMasa: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var seleccionMasa: UIPickerView!
    var masas:[String] = [String]()
    var orden = DatosOrden()
    override func viewDidLoad() {
        super.viewDidLoad()
        masas = ["Delgada","Crujiente","Gruesa"];
        self.seleccionMasa.delegate=self
        self.seleccionMasa.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masas.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masas[row]
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewQueso = segue.destinationViewController as! ViewQuesos
        viewQueso.orden = self.orden
        viewQueso.orden.TipoMasa = masas[seleccionMasa.selectedRowInComponent(0)]
        
    }
    
}
