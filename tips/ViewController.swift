//
//  ViewController.swift
//  tips
//
//  Created by Tasfia Addrita on 12/4/15.
//  Copyright © 2015 Tasfia Addrita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalLabel_2: UILabel!
    @IBOutlet weak var totalLabel_3: UILabel!
    @IBOutlet weak var totalLabel_4: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPecentageLabel: UILabel!
    
    func calculate() {
        
        let tipPercentage1 = roundf(tipSlider.value)
        let tipPercentage = roundf(tipSlider.value) / 100
        
        let billAmount = NSString(string: billField.text!).floatValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        let total_2 = total / 2
        let total_3 = total / 3
        let total_4 = total / 4
        
        tipPecentageLabel.text = String(format: "%.0f", tipPercentage1)
        
        tipLabel.text = String(format: "+ $%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalLabel_2.text = String(format: "$%.2f", total_2)
        totalLabel_3.text = String(format: "$%.2f", total_3)
        totalLabel_4.text = String(format: "$%.2f", total_4)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let background = CAGradientLayer().purpleToBlue()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, atIndex: 0)
        
        billField.becomeFirstResponder()
        billField.attributedPlaceholder = NSAttributedString(string:"$", attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
    
        tipPecentageLabel.text = "15"
        
        tipLabel.text = "+ $0.00"
        totalLabel.text = "$0.00"
        totalLabel_2.text = "$0.00"
        totalLabel_3.text = "$0.00"
        totalLabel_4.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        //var tipPercentages = [0.18, 0.20, 0.22]
        //let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        /*let tipPercentage1 = roundf(tipSlider.value)
        let tipPercentage = roundf(tipSlider.value) / 100
        
        let billAmount = NSString(string: billField.text!).floatValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        let total_2 = total / 2
        let total_3 = total / 3
        let total_4 = total / 4
        
        tipPecentageLabel.text = String(format: "%.0f", tipPercentage1)
        
        tipLabel.text = String(format: "+ $%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalLabel_2.text = String(format: "$%.2f", total_2)
        totalLabel_3.text = String(format: "$%.2f", total_3)
        totalLabel_4.text = String(format: "$%.2f", total_4)*/
        
        // function goes here
        calculate()
        
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
        
    }
    
    
}

