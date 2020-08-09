//
//  Extension.swift
//  LoalizationDemo
//
//  Created by Raju Gupta on 15/07/20.
//  Copyright © 2020 Raju Gupta. All rights reserved.
//

import Foundation
import  UIKit

extension String{
    
    func localizableString() -> String{
        let path = Bundle.main.path(forResource: UserDefaults.standard.string(forKey: "language"), ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
