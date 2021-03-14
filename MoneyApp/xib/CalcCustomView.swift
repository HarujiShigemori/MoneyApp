

import UIKit

class CalcCustomView: UIView {
    
    @IBOutlet var view: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    
    @IBOutlet weak var descriptionLabel1: UILabel!
    @IBOutlet weak var descriptionLabel2: UILabel!
    @IBOutlet weak var descriptionLabel3: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        nibInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibInit()
    }
    
    private func nibInit() {
        let nib = UINib(nibName: "CalcCustomView", bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        self.addSubview(view)
    }
    

    @IBAction func textField1(_ sender: UITextField) {
        guard let text = sender.text else {
            fatalError()
        }
        textField1.text = Comma.addComma(num: text)
    }
    
    @IBAction func textField2(_ sender: UITextField) {
        guard let text = sender.text else {
            fatalError()
        }
        textField2.text = Comma.addComma(num: text)
    }
    
    
    func showLayout(x: CGFloat,y: CGFloat,width: CGFloat,height: CGFloat) {
        
        view.frame = CGRect(x: x, y: y, width: width, height: height)
        
    }
}
