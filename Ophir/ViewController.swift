//
//  ViewController.swift
//  Ophir
//
//  Created by Arnaud Da Silva on 17/02/2017.
//  Copyright © 2017 Arnaud Da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtField: UITextField!
    @IBOutlet var buttonEcrire : UIButton!
    @IBOutlet var label: UITextView!
    var arrayOfString: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        txtField.text = "Mets ton nom"
        label.text = ""
        populateArray()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickEcrire(){
        var index = Int(arc4random_uniform(UInt32(6)))
        index = index % arrayOfString.count
        var text: String = arrayOfString[index]
        
        label.text = text.replacingOccurrences(of: "{0}", with: txtField.text!)
    }
    
    func populateArray(){
        arrayOfString.append("{0} est fou d'amour pour Ophir Paz")
        arrayOfString.append("{0} trouve qu'Ophir est sexy !")
        arrayOfString.append("Ophir Paz et {0} semble avoir des relations intimes")
        arrayOfString.append("Ophir Paz ne mérite pas un étudiant aussi talentueux que {0}")
        arrayOfString.append("Ophir Paz ou {0}, peut importe la soupe est bonne !")
        arrayOfString.append("Ophir Paz frappe {0} et précise que non, une soupe, ce n'est pas un repas")
        //arrayOfString.append("Ophir Paz ne mérite pas un étudiant aussi talentueux que {0}")
        //arrayOfString.append("Ophir Paz ne mérite pas un étudiant aussi talentueux que {0}")
        //arrayOfString.append("Ophir Paz ne mérite pas un étudiant aussi talentueux que {0}")
    }

}

