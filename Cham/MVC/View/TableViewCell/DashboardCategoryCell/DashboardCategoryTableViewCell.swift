//
//  DashboardCategoryTableViewCell.swift
//  Cham
//
//  Created by osx on 02/03/21.
//  Copyright © 2021 osx. All rights reserved.
//

import UIKit

class DashboardCategoryTableViewCell: UITableViewCell {

    //MARK:- OUTLETS
    @IBOutlet var CategoryCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.registerNibFileName()
        self.CategoryCollectionView.delegate = self
        self.CategoryCollectionView.dataSource = self
   
    }
    func registerNibFileName() {
        self.CategoryCollectionView.register(UINib(nibName: "DashboardCategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DashboardCategoryCollectionViewCell")
    }
    
}

//MARK:- EXTENSION COLLECTIONVIEW
extension DashboardCategoryTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DashboardCategoryCollectionViewCell", for: indexPath) as! DashboardCategoryCollectionViewCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let yourWidth = collectionView.bounds.width/3.0
        let yourHeight = yourWidth

        return CGSize(width: yourWidth, height: yourHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
