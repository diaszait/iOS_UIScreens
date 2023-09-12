//
//  MainViewController.swift
//  iOS_UIScreen
//
//  Created by Dias Zait on 13.09.2023.
//
import UIKit

class ViewController: UIViewController {
    

    let singlesButton = UIButton()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .white
        
        
        
        //button to open single page
        singlesButton.setTitle("Singles", for: .normal)
        singlesButton.setTitleColor(.systemBlue, for: .normal)
        singlesButton.addTarget(self, action: #selector(openSinglesPage), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [singlesButton])
        stackView.axis = .vertical
        stackView.spacing = 25
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
        ])
    }
    
   
    
    @objc func openSinglesPage() {
        let singlelViewController = SinglesMainTabBar()
        navigationController?.pushViewController(singlelViewController, animated: true)
    }
}

