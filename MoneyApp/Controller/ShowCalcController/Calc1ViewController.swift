
import UIKit

class Calc1ViewController: UIViewController {
    
    @IBOutlet weak var toResultButton: UIButton!
    @IBOutlet weak var attentionLabel: UILabel!
    
    @IBOutlet weak var customView: CalcCustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.textField1.keyboardType = UIKeyboardType.numberPad
        customView.textField2.keyboardType = UIKeyboardType.numberPad
        customView.textField3.keyboardType = UIKeyboardType.numberPad
        customView.textField4.keyboardType = UIKeyboardType.numberPad
        
        customView.backgroundColor = .white
        
        let vfs = view.frame.size
        customView.showLayout(x: vfs.width / 10,y: 0,width: vfs.width - vfs.width / 5,height: vfs.height / 2)
        
        toResultButton.layer.cornerRadius = 10
        attentionLabel.isHidden = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let result1VC = segue.destination as? Result1ViewController {

            result1VC.start = deleteComma(num: customView.textField1.text!)
            result1VC.monthly = deleteComma(num: customView.textField2.text!)
            result1VC.years = deleteComma(num: customView.textField3.text!)
            result1VC.annualYield = deleteComma(num: customView.textField4.text!)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func toResultButton(_ sender: Any) {
        
        if customView.textField3.text == "" || customView.textField4.text == ""{
            attentionLabel.isHidden = false
        }else{
            performSegue(withIdentifier: "ResultVC", sender: nil)
        }
    }
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func deleteComma(num:String) -> Int{
        var cutNum = num.replacingOccurrences(of: ",", with: "")
        if cutNum == "" {
            cutNum = "0"
        }
        return Int(cutNum)!
    }
}
