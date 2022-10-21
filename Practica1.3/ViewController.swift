//
//  ViewController.swift
//  Practica1.3
//
//  Created by Alumno on 21/10/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swpermiso: UISwitch!
    @IBOutlet weak var lblTexto: UILabel!
    
    @IBOutlet weak var lblAdvertencia: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doTapModificar(_ sender: Any) {
        lblAdvertencia.isHidden = true
        if swpermiso.isOn
        {
            performSegue(withIdentifier: "goToModificar", sender: self)
        }else
        {
            lblAdvertencia.isHidden = false
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ModificarController
        destino.texto = lblTexto.text
        destino.callbackActualizar = actualizarEtiqueta
        
    }
    
    func actualizarEtiqueta(texto:String){
        lblTexto.text = texto
    }
    
    
    
}
    









