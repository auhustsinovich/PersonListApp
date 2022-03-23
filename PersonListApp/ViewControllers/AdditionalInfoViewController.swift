//
//  additionalInfoViewController.swift
//  PersonListApp
//
//  Created by Daniil on 22.03.22.
//

import UIKit

class AdditionalInfoViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = "Phone: \(person.number)"
        emailLabel.text = "Email: \(person.email)"
    }
}
