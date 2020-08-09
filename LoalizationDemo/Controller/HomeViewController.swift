//
//  HomeViewController.swift
//  LoalizationDemo
//
//  Created by Raju Gupta on 14/07/20.
//  Copyright © 2020 Raju Gupta. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var lblFirstQuote: UILabel!
    @IBOutlet weak var lblSecondQuote: UILabel!
    @IBOutlet weak var lblThirdQuote: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        lblFirstQuote.text = "FirstQuote".localizableString()
        lblSecondQuote.text = "SecondQuote".localizableString()
        lblThirdQuote.text = "ThirdQuote".localizableString()
    }
}
