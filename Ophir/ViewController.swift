//
//  ViewController.swift
//  Ophir
//
//  Created by Arnaud Da Silva on 17/02/2017.
//  Copyright © 2017 Arnaud Da Silva. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //@IBOutlet var txtField: UITextField!
    @IBOutlet var buttonEcrire : UIButton!
    @IBOutlet var label: UITextView!
    @IBOutlet var buttonShare: UIButton!
    
    var arrayOfString: [String] = []
    var verbArray : [String] = []
    var complementArray : [String]=[]
    var subjectString: [String] = []
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //txtField.text = "Mets ton nom"
        label.text = ""
        populateArray()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickEcrire(){
        var response : String = ""
        var index = Int(arc4random_uniform(UInt32(99)))
        index = index % subjectString.count
        var text: String = subjectString[index]
        
        response += " "+text
        
        index = Int(arc4random_uniform(UInt32(99)))
        index = index % verbArray.count
        text = verbArray[index]
        response += " "+text
        
        index = Int(arc4random_uniform(UInt32(99)))
        index = index % complementArray.count
        text = complementArray[index]
        response += " "+text
        
        label.text = response
        
        
        myUtterance = AVSpeechUtterance(string: label.text)
        myUtterance.rate = 0.6

        myUtterance.voice = AVSpeechSynthesisVoice(language: "fr-FR")
        synth.speak(myUtterance)
        
    }
    
    @IBAction func shareAction(){
        let string: String = label.text
        
        let activityViewController = UIActivityViewController(activityItems: [string], applicationActivities: nil)
        present(activityViewController, animated: true) {
            // ...
        }

    }
    
    func populateArray(){
        // Verbs
        verbArray.append("aime")
        verbArray.append("dévore")
        verbArray.append("viole")
        verbArray.append("suce")
        verbArray.append("mange")
        verbArray.append("prend")
        verbArray.append("éjecte")
        
        // complement
        complementArray.append("des enfants")
        complementArray.append("les chocolatines")
        complementArray.append("avec MJC")
        complementArray.append("les lasagnes")
        complementArray.append("la maman de MAX")
        complementArray.append("les sucettes a l'anus")
        complementArray.append("l'éclairage public")
        complementArray.append("le cul d'une poule")
        complementArray.append("les pommes du verger")
        complementArray.append("des chaussures en daim")
        complementArray.append("la raclette")
        complementArray.append("le babyfoot")
        complementArray.append("une bite")
        complementArray.append("la table basse")
        complementArray.append("un café a la vanille")
        complementArray.append("Pierre CapDePuy")
        /*complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")
        complementArray.append("")*/
        
        
        subjectString.append("Maxime")
        subjectString.append("Thomas")
        subjectString.append("Arnaud")
        subjectString.append("Arthur")
        subjectString.append("Hugo")
        subjectString.append("Yohann")
        subjectString.append("Martin")
        
        
        /*arrayOfString.append("{0} est fou d'amour pour Ophir Paz")
        arrayOfString.append("{0} trouve qu'Ophir est sexy !")
        arrayOfString.append("Ophir Paz et {0} semble avoir des relations intimes")
        arrayOfString.append("Ophir Paz ne mérite pas un étudiant aussi talentueux que {0}")
        arrayOfString.append("Ophir Paz ou {0}, peut importe la soupe est bonne !")
        arrayOfString.append("Ophir Paz frappe {0} et précise que non, une soupe, ce n'est pas un repas")*/
        //arrayOfString.append("Ophir Paz ne mérite pas un étudiant aussi talentueux que {0}")
        //arrayOfString.append("Ophir Paz ne mérite pas un étudiant aussi talentueux que {0}")
        //arrayOfString.append("Ophir Paz ne mérite pas un étudiant aussi talentueux que {0}")
    }

}

