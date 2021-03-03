//
//  DashboardVC.swift
//  Cham
//
//  Created by osx on 26/02/21.
//  Copyright © 2021 osx. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {
    
    //MARK:- OUTLETS
    @IBOutlet var bannerCollectionView: UICollectionView!
    @IBOutlet var dashboardTableView: UITableView!
    
    //MARK:- LOCAL VARIABLE
    var CategoriesName = ["All Cakes","Speacial Orders","Shipping Out St Louis","Samar's Basket"]
    var bannerImage = [UIImage(named: "cake2"),UIImage(named: "Cake"),UIImage(named: "cake2"),UIImage(named: "Cake")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerNibFileName()
        
    }
    
    func registerNibFileName() {
        self.dashboardTableView.register(UINib(nibName: "DashboardSectionTableViewCell", bundle: nil), forCellReuseIdentifier: "DashboardSectionTableViewCell")
        self.bannerCollectionView.register(UINib(nibName: "BannerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BannerCollectionViewCell")
    }
}
//MARK:- EXTENSION TABLEVIEW
extension DashboardVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return CategoriesName.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DashboardSectionTableViewCell", for: indexPath) as! DashboardSectionTableViewCell
        cell.lblCategoriesName.text = CategoriesName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

//MARK:- EXTENSION COLLECTIONVIEW
extension DashboardVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bannerImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell", for: indexPath) as! BannerCollectionViewCell
        cell.imgView.image = bannerImage[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: bannerCollectionView.frame.size.width, height: bannerCollectionView.frame.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
