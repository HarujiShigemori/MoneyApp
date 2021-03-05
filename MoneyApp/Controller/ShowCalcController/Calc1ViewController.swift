//
//  Calc1ViewController.swift
//  MoneyApp
//
//  Created by 重盛晴二 on 2021/02/25.
//

import UIKit

class Calc1ViewController: UIViewController {
    
    @IBOutlet weak var startTextField: UITextField!
    @IBOutlet weak var monthlyTextField: UITextField!
    @IBOutlet weak var yearsTextField: UITextField!
    @IBOutlet weak var annualYieldTextField: UITextField!
    @IBOutlet weak var toResultButton: UIButton!
    @IBOutlet weak var attentionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTextField.keyboardType = UIKeyboardType.numberPad
        monthlyTextField.keyboardType = UIKeyboardType.numberPad
        yearsTextField.keyboardType = UIKeyboardType.numberPad
        annualYieldTextField.keyboardType = UIKeyboardType.numberPad
        
        toResultButton.layer.cornerRadius = 10
        
        attentionLabel.isHidden = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let result1VC = segue.destination as? Result1ViewController {
            
            result1VC.start = Int(startTextField.text!)
            result1VC.monthly = Int(monthlyTextField.text!)
            result1VC.years = Int(yearsTextField.text!)
            result1VC.annualYield = Int(annualYieldTextField.text!)
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func toResultButton(_ sender: Any) {
        
        if yearsTextField.text == "" || annualYieldTextField.text == ""{
            attentionLabel.isHidden = false
        }else{
            
            performSegue(withIdentifier: "ResultVC", sender: nil)
        }
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
