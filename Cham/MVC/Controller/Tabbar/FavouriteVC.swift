//
//  FavouriteVC.swift
//  Cham
//
//  Created by osx on 02/03/21.
//  Copyright © 2021 osx. All rights reserved.
//

import UIKit

class FavouriteVC: UIViewController {
    
    @IBOutlet var favouriteTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerNibFileName()
        
    }
    func registerNibFileName() {
        self.favouriteTableView.register(UINib(nibName: "FavouriteTableViewCell", bundle: nil), forCellReuseIdentifier: "FavouriteTableViewCell")
    }
}
//MARK:- EXTENSION TABLEVIEW
extension FavouriteVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavouriteTableViewCell", for: indexPath) as! FavouriteTableViewCell
        cell.viewImg.setRound()
        cell.imgView.setRound()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }
}
