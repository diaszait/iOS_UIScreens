//
//  SinglesViewController.swift
//  iOS_UIScreen
//
//  Created by Dias Zait on 13.09.2023.
//

import Foundation
import UIKit
//uitabbarviewcontroller
class SinglesViewController : UIViewController {
    
    let myTitle : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Singles"
        cLabel.font = .systemFont(ofSize: 22)
        return cLabel
    }()
    
    let expandImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Outline")
        
        return image
    }()
    
    let searchImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Outline 1")
        
        return image
    }()
    
    let tableView : UITableView = {
        let tableView = UITableView()
        
        tableView.separatorStyle = .none
        
        return tableView
    }()
    
    let passData = [
        PassData(image: "Book", titleLabel: "SOS", descriptionLabel: "Mini meltdown? Get some Headspace in a hurry"),
        PassData(image: "Bookshelf", titleLabel: "On-the-Go", descriptionLabel: "Mindful living? Get your Headspace to go"),
        PassData(image: "Diploma", titleLabel: "Classic", descriptionLabel: "Like it simple? Get some extra Headspace"),
        PassData(image: "Globus", titleLabel: "SOS", descriptionLabel: "Mini meltdown? Get some Headspace in a hurry"),
        PassData(image: "Book", titleLabel: "SOS", descriptionLabel: "Mini meltdown? Get some Headspace in a hurry"),
        PassData(image: "Bookshelf", titleLabel: "On-the-Go", descriptionLabel: "Mindful living? Get your Headspace to go"),
        PassData(image: "circle", titleLabel: "String", descriptionLabel: "String"),
        PassData(image: "circle", titleLabel: "String", descriptionLabel: "String"),
        PassData(image: "circle", titleLabel: "String", descriptionLabel: "String"),
        PassData(image: "circle", titleLabel: "String", descriptionLabel: "String"),
        PassData(image: "circle", titleLabel: "String", descriptionLabel: "String"),
        PassData(image: "circle", titleLabel: "String", descriptionLabel: "String"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = UIColor.blue
        view.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 100)
        
        tableView.rowHeight = 160
        tableView.dataSource = self
        tableView.register(LastTableViewCell.self, forCellReuseIdentifier: "cell")
        
        addToView()
        constraints()
    }
    
    func addToView(){
        
        //        view.addSubview(balanceLabel)
        view.addSubview(myTitle)
        view.addSubview(tableView)
        view.addSubview(expandImage)
        view.addSubview(searchImage)
    }
    
    func constraints(){
        
        myTitle.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        expandImage.translatesAutoresizingMaskIntoConstraints = false
        searchImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            myTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            myTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myTitle.heightAnchor.constraint(equalToConstant: 70),
            
            expandImage.centerYAnchor.constraint(equalTo: myTitle.centerYAnchor),
            expandImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            searchImage.centerYAnchor.constraint(equalTo: myTitle.centerYAnchor),
            searchImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            tableView.topAnchor.constraint(equalTo: myTitle.bottomAnchor, constant: 20),
            //            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            tableView.heightAnchor.constraint(equalToConstant: 1000),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
}

struct PassData {
    var image : String
    var titleLabel : String
    var descriptionLabel : String
}

extension SinglesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LastTableViewCell
        let myData = passData[indexPath.row]
        
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 0.3
        
        cell.image.image = UIImage(named: myData.image)
        cell.titleLabel.text = myData.titleLabel
        cell.descriptionLabel.text = myData.descriptionLabel
        
        if indexPath.row == 0 {
            cell.setupConstraintsForFirstCell()
        } else if indexPath.row == 1 {
            cell.setupConstraintsForSecondCell()
        } else if indexPath.row == 2 {
            cell.setupConstraintsForThirdCell()
        } else if indexPath.row == 3 {
            cell.setupConstraintsForFourthCell()
        } else {
            cell.setupConstraintsForFirstCell()
        }
        
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

