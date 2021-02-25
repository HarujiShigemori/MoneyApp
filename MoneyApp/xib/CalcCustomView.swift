//
//  CalcCustomView.swift
//  MoneyApp
//
//  Created by 重盛晴二 on 2021/02/25.
//

import UIKit

class CalcCustomView: UIView {

    @IBOutlet weak var customLabel1: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    private func loadNib() {
        if let view = Bundle.main.loadNibNamed(String(describing: type(of: self)), owner: self)?.first as? UIView {
            view.frame = self.bounds
            self.addSubview(view)
        }
    }

}
