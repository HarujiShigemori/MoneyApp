//
//  CalcViewController.swift
//  MoneyApp
//
//  Created by 重盛晴二 on 2021/02/23.
//

import UIKit

class CalcViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.layer.cornerRadius = 20
        titleLabel.clipsToBounds = true
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CalcTableViewCell", bundle: nil), forCellReuseIdentifier: "CalcCell")
        
    }
    

}


extension CalcViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CalcCell", for: indexPath) as! CalcTableViewCell
        
        return cell
    }
    
    
    
}
