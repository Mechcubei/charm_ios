//
//  LoginVC.swift
//  Cham
//
//  Created by osx on 26/02/21.
//  Copyright © 2021 osx. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet var viewCurver: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.viewCurver.addBottomRoundedCornerToView(targetView: viewCurver, desiredCurve: 1)
    
    }

}
