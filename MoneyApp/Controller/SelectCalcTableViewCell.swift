

import UIKit

class SelectCalcTableViewCell: UITableViewCell {
    
    static let identifier = "CalcTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "CalcTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var CellImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        CellImageView.layer.cornerRadius = 5
    }
    
    func setCell(text:String,imageStr:String) {
        
        label.text = text
        CellImageView.image = UIImage(named: imageStr)
        CellImageView.contentMode = .scaleToFill
        
        if contentView.frame.size.width >= 500 {
            label.font = label.font.withSize(30)
            
        }
    }
}
