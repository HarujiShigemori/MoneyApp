//
//  Result1ViewController.swift
//  MoneyApp
//
//  Created by 重盛晴二 on 2021/03/05.
//

import UIKit

class Result1ViewController: UIViewController {
    
    var start: Int?
    var monthly: Int?
    var years: Int?
    var annualYield: Int?
    
    var calculatorModel = CalculatorModel()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let array = calculatorModel.calcFinal(start: start!, monthly: monthly!, years: years!, annualYield: annualYield!)
        print(array)
        
        // Do any additional setup after loading the view.
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
