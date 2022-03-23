//
//  TabBarViewController.swift
//  PersonListApp
//
//  Created by Daniil on 23.03.22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViewControllers(with: persons)
    }
    
    private func updateViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! PersonListViewController
        let sectionVC = viewControllers?.last as! PersonInformationViewController
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
