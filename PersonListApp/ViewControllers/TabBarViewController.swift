//
//  TabBarViewController.swift
//  PersonListApp
//
//  Created by Daniil on 23.03.22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViewControllers(with: persons)
    }
    
    private func updateViewControllers(with persons: [Person]) {
        guard let contactListVC = viewControllers?.first as? PersonListViewController else { return }
        guard let sectionVC = viewControllers?.last as? PersonInformationViewController else { return }
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
