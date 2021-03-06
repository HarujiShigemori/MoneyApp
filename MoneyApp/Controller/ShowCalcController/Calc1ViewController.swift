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
        
        startTextField.text = addComma(num: startTextField.text!)
        
        
        
        toResultButton.layer.cornerRadius = 10
        
        attentionLabel.isHidden = true
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        startTextField.text = addComma(num: startTextField.text!)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let result1VC = segue.destination as? Result1ViewController {
            
            result1VC.start = deleteComma(num: startTextField.text!)
            result1VC.monthly = deleteComma(num: monthlyTextField.text!)
            result1VC.years = deleteComma(num: yearsTextField.text!)
            result1VC.annualYield = deleteComma(num: annualYieldTextField.text!)
            
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
    
    
    @IBAction func startTextField(_ sender: UITextField) {
        guard let text = sender.text else {
            fatalError()
        }
        startTextField.text = addComma(num: text)
    }
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    func addComma(num:String) -> String {
        
        if num != "" {
            let formatter = NumberFormatter()
            formatter.numberStyle = NumberFormatter.Style.decimal
            formatter.groupingSeparator = ","
            formatter.groupingSize = 3
            
            let cutNum = num.replacingOccurrences(of: ",", with: "")
            let numInt = Int(cutNum)
            let str = formatter.string(from: NSNumber(value: numInt!))!
            return str
        }
        return ""
    }
    
    func deleteComma(num:String) -> Int{
        var cutNum = num.replacingOccurrences(of: ",", with: "")
        if cutNum == "" {
            cutNum = "0"
        }
        return Int(cutNum)!
    }
}
