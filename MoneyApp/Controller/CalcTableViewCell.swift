//
//  CalcTableViewCell.swift
//  MoneyApp
//
//  Created by 重盛晴二 on 2021/02/24.
//

import UIKit


class CalcTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var CellImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func calcButton(_ sender: Any) {
        
        
    }
    
    
}
