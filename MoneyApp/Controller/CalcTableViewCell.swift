//
//  CalcTableViewCell.swift
//  MoneyApp
//
//  Created by 重盛晴二 on 2021/02/24.
//

import UIKit

class CalcTableViewCell: UITableViewCell {
    
    static let identifier = "CalcTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "CalcTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var CellImageView: UIImageView!
    @IBOutlet weak var appealLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        appealLabel.layer.cornerRadius = 10
        appealLabel.clipsToBounds = true
        CellImageView.layer.cornerRadius = 5
    }
    
    func setCell(text:String,imageStr:String) {
        
        label.text = text
        CellImageView.image = UIImage(named: imageStr)
        CellImageView.contentMode = .scaleToFill
        
    }
    
    
    
    
}
