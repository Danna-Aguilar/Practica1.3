//
//  ModificarDosController.swift
//  Practica1.3
//
//  Created by Alumno on 24/10/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class ModificarDosController: UIViewController {
    var texto : String?

    @IBOutlet weak var txtTexto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if texto != nil {
            txtTexto.text = texto
        }
    }
    
    @IBAction func doTapActualizar(_ sender: Any) {
    }
    
    
    
}
