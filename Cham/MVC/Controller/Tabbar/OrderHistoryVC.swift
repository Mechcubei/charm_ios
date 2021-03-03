//
//  OrderHistoryVC.swift
//  Cham
//
//  Created by osx on 01/03/21.
//  Copyright © 2021 osx. All rights reserved.
//

import UIKit

class OrderHistoryVC: UIViewController {

    @IBOutlet var orderHistoryTableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.registerNibFileName()
    
    }
    
    func registerNibFileName() {
        self.orderHistoryTableview.register(UINib(nibName: "OrderHistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "OrderHistoryTableViewCell")
    }
}
//MARK:- EXTENSION TABLEVIEW
extension OrderHistoryVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderHistoryTableViewCell", for: indexPath) as! OrderHistoryTableViewCell
        cell.viewImg.setRound()
        cell.imgView.setRound()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
