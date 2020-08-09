//
//  ProfileViewController.swift
//  LoalizationDemo
//
//  Created by Raju Gupta on 14/07/20.
//  Copyright © 2020 Raju Gupta. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileTableView : UITableView!
    let sectionArr = ["MainInfo", "About", "Email", "Attribute", "Friends"]
    let friendsName = ["HuckleberryFinn","BeckyThatcher","CelesteHolm"]
    let friendsImg = ["finn","becky","holm"]
    let keyAttr = ["DOB","Gender","Height"]
    let valueAttr = ["date","male","180"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellRegistration()
    }
    override func viewWillAppear(_ animated: Bool) {
        profileTableView.reloadData()
    }
    
    func cellRegistration(){
        let name = UINib(nibName: "ImgNameCell", bundle: nil)
        profileTableView.register(name, forCellReuseIdentifier: "ImgNameCell")
        let email = UINib(nibName: "EmailAboutCell", bundle: nil)
        profileTableView.register(email, forCellReuseIdentifier: "EmailAboutCell")
        let attribute = UINib(nibName: "AttributeCell", bundle: nil)
        profileTableView.register(attribute, forCellReuseIdentifier: "AttributeCell")
    }
    
}

extension ProfileViewController : UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionArr.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let sectionIndex = profileItem(rawValue: section){
            switch sectionIndex {
            case .main:
                return 1
            case .about:
                return 1
            case .email:
                return 1
            case .attribute:
                return 3
            case .friend:
                return 3
            }
        }
        return 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if let sectionIndex = profileItem(rawValue: indexPath.section){
            
            switch sectionIndex {
            case .main:
                let cell = tableView.dequeueReusableCell(withIdentifier: "ImgNameCell", for: indexPath) as! ImgNameCell
                cell.imgPerson.image = UIImage(named: "tom")
                cell.lblPersonName.text = "Tom Sawyer".localizableString()
                return cell
            case .about:
                let cell = tableView.dequeueReusableCell(withIdentifier: "EmailAboutCell", for: indexPath) as! EmailAboutCell
                cell.lblAboutEmail.text = "travel".localizableString()
                return cell
            case .email:
                let cell = tableView.dequeueReusableCell(withIdentifier: "EmailAboutCell", for: indexPath) as! EmailAboutCell
                cell.lblAboutEmail.text = "tomSawyer@gmail.com"
                return cell
            case .attribute:
                let cell = tableView.dequeueReusableCell(withIdentifier: "AttributeCell", for: indexPath) as! AttributeCell
                cell.lblKey.text = keyAttr[indexPath.row].localizableString()
                cell.lblValue.text = valueAttr[indexPath.row].localizableString()
                return cell
            case .friend:
                let cell = tableView.dequeueReusableCell(withIdentifier: "ImgNameCell", for: indexPath) as! ImgNameCell
                cell.imgPerson.image = UIImage(named: "\(friendsImg[indexPath.row])")
                cell.lblPersonName.text = friendsName[indexPath.row].localizableString()
                return cell
            }
        }
        return cell
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return sectionArr[section].localizableString()
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let returnedView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 30)) //set these values as necessary
        returnedView.backgroundColor = #colorLiteral(red: 0.5793788789, green: 1, blue: 0.8540372489, alpha: 1)

        let label = UILabel(frame: CGRect(x: 16, y: 0, width: view.frame.width - 32, height: 30))

        label.text = self.sectionArr[section].localizableString()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        returnedView.addSubview(label)

        return returnedView
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let sectionIndex = profileItem(rawValue: indexPath.section){
            switch sectionIndex {
            case .main:
                return 80
            case .about:
                return 50
            case .email:
                return 50
            case .attribute:
                return 50
            case .friend:
                return 80
            }
        }
        return 60
    }
    
    
}

enum profileItem : Int{
    case main = 0
    case about = 1
    case email = 2
    case attribute = 3
    case friend = 4
}
