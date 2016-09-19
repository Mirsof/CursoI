//
//  ViewController.swift
//  MasFeliz
//
//  Created by Miguel Angel Reyes on 18/09/16.
//  Copyright © 2016 Miguel Angel Reyes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensajePositiov: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func dameMensaje() {
        mensajePositiov.text = " sdsd sd";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

