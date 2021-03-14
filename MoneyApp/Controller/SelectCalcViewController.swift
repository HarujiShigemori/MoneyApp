
import UIKit

class SelectCalcViewController: UIViewController{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    
    let exampleArray = [
        ["最初に出すお金と毎月の積立金額から、最終金額を求める","IMG_0213"],
        ["例 : 年利3％で5年後に100万円を用意するためには、元本がいくら必要か","IMG_0214"],
        ["例 : 年利3％、毎年30万円を5年間積み立てた場合の5年後の金額はいくらか","IMG_0216"],
        ["例 : 年利3％、5年後に100万円を用意するためには、毎年いくら積み立てる必要があるか","IMG_0219"],
        ["例 : 100万円を年利3％で運用しながら5年間で取り崩した場合の毎年の受取額はいくらか","IMG_0734"],
        ["例 : 5年間にわたって毎年30万ずつ受け取る場合、年利が3％のとき、必要な元本はいくらか","yukigeshiki"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.layer.cornerRadius = 20
        titleLabel.clipsToBounds = true
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SelectCalcTableViewCell.nib(), forCellReuseIdentifier: SelectCalcTableViewCell.identifier)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

}


extension SelectCalcViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height = 140
        if view.frame.size.width >= 500 {
            height = 250
        }
        return CGFloat(height)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exampleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SelectCalcTableViewCell.identifier, for: indexPath) as! SelectCalcTableViewCell
        
        cell.setCell(text: exampleArray[indexPath.row][0], imageStr: exampleArray[indexPath.row][1])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let id = "Calc\(indexPath.row + 1)"
        performSegue(withIdentifier: id, sender: nil)
    }
}

