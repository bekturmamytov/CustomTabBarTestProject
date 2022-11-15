//
//  TabBarControllerMainViewController.swift
//  CustomTabBar
//
//  Created by Bektur Mamytov on 16/11/22.
//

import UIKit

class TabBarControllerMainViewController: UITabBarController {

    @IBOutlet var tabBarView: UIView!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tabBarView)
        
        tabBarView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tabBarView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 34),
            tabBarView.heightAnchor.constraint(equalToConstant: 104),
            tabBarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tabBarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
            
        ])
    }
    

    @IBAction func changeTab(_ sender: Any) {
        let index = (sender as! UIButton).tag
        
        change(tabIndex: index)
        
    }
    
    
    func change(tabIndex: Int) {
        firstButton.backgroundColor = .clear
        secondButton.backgroundColor = .clear
        
        switch tabIndex {
        case 0:
            firstButton.backgroundColor = .blue
        case 1:
            secondButton.backgroundColor = .green
        default:
            firstButton.backgroundColor = .blue
        }
        
        selectedIndex = tabIndex
    }

}
