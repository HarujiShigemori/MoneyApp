

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
        
    }
    
    
    private func showResult() {
        
        startLabel.text = "\(Comma.addComma(num: String(start!)))円"
        monthlyLabel.text = "\(Comma.addComma(num: String(monthly!)))円"
        yearsLabel.text = "\(String(years!))年"
        annualYieldLabel.text = "\(String(annualYield!))%"
        
        let array = calculatorModel.calcFinalAmount(start: start!, monthly: monthly!, years: years!, annualYield: annualYield!)
        
        InvestmentAmountLabel.text = "\(Comma.addComma(num: array.investmentAmount))円"
        revenueLabel.text = "\(Comma.addComma(num: array.interest))円"
        lastResultLabel.text = "\(Comma.addComma(num: String(array.result.last!)))円"
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
