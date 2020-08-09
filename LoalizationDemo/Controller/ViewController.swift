//
//  ViewController.swift
//  LoalizationDemo
//
//  Created by Raju Gupta on 14/07/20.
//  Copyright © 2020 Raju Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onClickSelectLanguage(_ sender: UIButton) {
        let alert = UIAlertController(title: "Select Language", message: "Please select your language.", preferredStyle: .actionSheet)
        let homevc = storyboard?.instantiateViewController(identifier: "RootViewController") as! RootViewController
        
        let Hindi = UIAlertAction(title: "Hindi", style: .default) { (action) in
            UserDefaults.standard.set("hi", forKey: "language")
            self.navigationController?.pushViewController(homevc, animated: true)
        }
        
        let English = UIAlertAction(title: "English", style: .default) { (action) in
            UserDefaults.standard.set("en", forKey: "language")
            self.navigationController?.pushViewController(homevc, animated: true)
        }
        
        let Cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(Hindi)
        alert.addAction(English)
        alert.addAction(Cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
}

