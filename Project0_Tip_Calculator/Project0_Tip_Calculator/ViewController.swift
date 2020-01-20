//
//  ViewController.swift
//  Project0_Tip_Calculator
//
//  Created by Tribbianni_Sun on 1/19/20.
//  Copyright © 2020 Tribbianni_Sun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBAction func CalculatingTheTotal(_ sender: Any) {
        /*get the total amount*/
        
        // we need to put a ! here after the text
        let currentBill = Double(BillField.text!) ?? 0
        
        let percentages = [0.1, 0.18, 0.2]
        
        
        // calculate the amount
        let currentTip = currentBill * percentages[tipControl.selectedSegmentIndex];
        let currentTotal = currentBill + currentTip;
    
        
        // update the tip and total label
        TipLabel.text = String(format:"$%.2f", currentTip)
        TotalLabel.text = String(format:"$%.2f", currentTotal)
        
        
        
    }
    
    
    
    
    
}

