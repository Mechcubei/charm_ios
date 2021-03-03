//
//  OrderVC.swift
//  Cham
//
//  Created by osx on 01/03/21.
//  Copyright © 2021 osx. All rights reserved.
//

import UIKit

class OrderVC: UIViewController {

    @IBOutlet var orderTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerNibFileName()
        
    }
    func registerNibFileName() {
        self.orderTableView.register(UINib(nibName: "OrderTableViewCell", bundle: nil), forCellReuseIdentifier: "OrderTableViewCell")
    }
    
}
//MARK:- EXTENSION TABLEVIEW
extension OrderVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell", for: indexPath) as! OrderTableViewCell
        cell.viewImg.setRound()
        cell.imgView.setRound()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
