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
    
    @IBOutlet weak var startLabel: UILabel!
    @IBOutlet weak var monthlyLabel: UILabel!
    @IBOutlet weak var yearsLabel: UILabel!
    @IBOutlet weak var annualYieldLabel: UILabel!
    
    @IBOutlet weak var InvestmentAmountLabel: UILabel!
    @IBOutlet weak var revenueLabel: UILabel!
    @IBOutlet weak var lastResultLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        showResult()
        // Do any additional setup after loading the view.
    }
    
    private func showResult() {
        
        let array = calculatorModel.calcFinal(start: start!, monthly: monthly!, years: years!, annualYield: annualYield!)
        startLabel.text = "\(String(start!))円"
        monthlyLabel.text = "\(String(monthly!))円"
        yearsLabel.text = "\(String(years!))年"
        annualYieldLabel.text = "\(String(annualYield!))%"
        
        InvestmentAmountLabel.text = "\(String(array.investmentAmount))円"
        revenueLabel.text = "\(String(array.interest))円"
        lastResultLabel.text = "\(String(array.result.last!))円"
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
