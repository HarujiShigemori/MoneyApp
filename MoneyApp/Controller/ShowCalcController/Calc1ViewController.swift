//
//  Calc1ViewController.swift
//  MoneyApp
//
//  Created by 重盛晴二 on 2021/02/25.
//

import UIKit

class Calc1ViewController: UIViewController {
    
    @IBOutlet weak var calcCutomView: CalcCustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(calcCutomView)
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
