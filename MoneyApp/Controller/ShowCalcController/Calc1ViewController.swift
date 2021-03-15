
import UIKit

class Calc1ViewController: UIViewController {
    
    @IBOutlet weak var toResultButton: UIButton!
    @IBOutlet weak var attentionLabel: UILabel!
    @IBOutlet weak var guardTheUpperLimitLabel: UILabel!
    
    
    @IBOutlet weak var customView: CalcCustomView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showCustomView()
        
        customView.textField1.keyboardType = UIKeyboardType.numberPad
        customView.textField2.keyboardType = UIKeyboardType.numberPad
        customView.textField3.keyboardType = UIKeyboardType.numberPad
        customView.textField4.keyboardType = UIKeyboardType.numberPad
        
        toResultButton.layer.cornerRadius = 10
        
        guardTheUpperLimitLabel.text = """
                                        最初に投資する金額は1兆円まで
                                        毎月の積立額は1000億円まで
                                        年数は200年まで
                                        年利は1000％まで
                                        """
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        attentionLabel.isHidden = true
        guardTheUpperLimitLabel.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let result1VC = segue.destination as? Result1ViewController {

            result1VC.start = Comma.deleteComma(num: customView.textField1.text!)
            result1VC.monthly = Comma.deleteComma(num: customView.textField2.text!)
            result1VC.years = Comma.deleteComma(num: customView.textField3.text!)
            result1VC.annualYield = Comma.deleteComma(num: customView.textField4.text!)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func toResultButton(_ sender: Any) {
        
        let noComma1 = Int(Comma.deleteComma(num: customView.textField1.text!))
        let noComma2 = Int(Comma.deleteComma(num: customView.textField2.text!))
        let noComma3 = Int(Comma.deleteComma(num: customView.textField3.text!))
        let noComma4 = Int(Comma.deleteComma(num: customView.textField4.text!))
        
        if noComma3 == 0 || noComma4 == 0{
            attentionLabel.isHidden = false
            guardTheUpperLimitLabel.isHidden = false
            
        }else if noComma1 > Int(pow(10.0, 13.0)) || noComma2 > Int(pow(10.0, 12.0)) || noComma3 > 200 || noComma4 > 1000{
            guardTheUpperLimitLabel.isHidden = false
            
        }else{
            performSegue(withIdentifier: "ResultVC", sender: nil)
        }
    }
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    private func showCustomView() {
        customView.backgroundColor = .white
        
        let vfs = view.frame.size
        customView.showLayout(x: vfs.width / 10,y: 0,width: vfs.width - vfs.width / 5,height: vfs.height / 2)
    }
}

