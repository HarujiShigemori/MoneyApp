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
    @IBOutlet weak var AnnualYieldTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTextField.keyboardType = UIKeyboardType.numberPad
        monthlyTextField.keyboardType = UIKeyboardType.numberPad
        yearsTextField.keyboardType = UIKeyboardType.numberPad
        AnnualYieldTextField.keyboardType = UIKeyboardType.numberPad
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
