//
//  ViewController.swift
//  Tipster
//
//  Created by Doaa Albishri on 24/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var groupValue: [UISlider]!
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TotalLabel.text = ""
    }

    @IBAction func Buttons(_ sender: UIButton) {
        let pressed = sender.titleLabel?.text
        switch pressed{
        case "0": TotalLabel.text = TotalLabel.text! + "0"
        case "1": TotalLabel.text = TotalLabel.text! + "1"
        case "2" :TotalLabel.text = TotalLabel.text! + "2"
        case "3": TotalLabel.text = TotalLabel.text! + "3"
        case "4": TotalLabel.text = TotalLabel.text! + "4"
        case "5": TotalLabel.text = TotalLabel.text! + "5"
        case "6": TotalLabel.text = TotalLabel.text! + "6"
        case "7": TotalLabel.text = TotalLabel.text! + "7"
        case "8": TotalLabel.text = TotalLabel.text! + "8"
        case "9": TotalLabel.text = TotalLabel.text! + "9"
        case "c": TotalLabel.text = ""
        case ".": TotalLabel.text = TotalLabel.text! + "."
        default: print("error")
        }
    }
    @IBOutlet weak var tip1: UILabel!
    @IBOutlet weak var tip2: UILabel!
    @IBOutlet weak var tip3: UILabel!
    
    @IBOutlet weak var tip4: UILabel!
    @IBOutlet weak var tip5: UILabel!
    @IBOutlet weak var tip6: UILabel!
    
    
    
    @IBAction func tipSlider(_ sender: UISlider) {
        tip1.text = "\(Int(sender.value + 10))%"
        tip2.text = "\(Int(sender.value + 15))%"
        tip3.text = "\(Int(sender.value + 20))%"
        
        tip4.text = "\(Float(sender.value + 5.00).rounded())"
        tip5.text = "\(Float(sender.value + 6.00).rounded())"
        tip6.text = "\(Float(sender.value + 3.00).rounded())"
        
    }
    
    

    @IBOutlet weak var group1: UILabel!
    @IBOutlet weak var group2: UILabel!
    @IBOutlet weak var group3: UILabel!
    
    
    @IBAction func groupSlider(_ sender: UISlider) {
        groupLabel.text = "Group Size: \(Int(sender.value))"
        
        group1.text = "\(Float(sender.value + 13.00).rounded())"
        group2.text = "\(Float(sender.value + 20.00).rounded())"
        group3.text = "\(Float(sender.value + 12.71).rounded())"
    }
    

}

