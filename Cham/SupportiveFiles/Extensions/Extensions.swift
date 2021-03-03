//
//  Extensions.swift
//  Learning

//  Created by Amandeep tirhima on 2020-04-22.
//  Copyright © 2020 Amandeep tirhima. All rights reserved.

import Foundation
import UIKit
extension NSObject {
    public var topMostVC:UIViewController?{
           return UIApplication.getTopViewController()
    }
    
    class func getTopViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        
        if let nav = base as? UINavigationController {
            return getTopViewController(base: nav.visibleViewController)
            
        } else if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return getTopViewController(base: selected)
            
        } else if let presented = base?.presentedViewController {
            return getTopViewController(base: presented)
        }
        return base
    }
    
    
}
   
protocol Localizable {
    var localized: String { get }
}
//MARK: - String extension
extension String:Localizable{
      
    // EZSE: Checks if string is empty or consists only of whitespace and newline characters
    public var isBlank: Bool {
        let trimmed = trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmed.isEmpty
    }
    
    /// EZSE: Trims white space and new line characters
    public mutating func trim() {
        self = self.trimmed()
    }
    
    /// EZSE: Trims white space and new line characters, returns a new string
    public func trimmed() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    static func trim(_ string: String?) -> String {
        return string?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) ?? ""
    }
    
}


extension Date
{
    func convertInDate(format:String,date:String) -> Date?{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let currentDate = formatter.date(from: date)
        return currentDate
    }
    
}


 
//MARK:-Colour extension
extension UIColor {
    static let appColour:UIColor? = UIColor.init(named: "")
}


@available(iOS 13.0, *)
extension AppDelegate {
     static let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
}

