//
//  DetailsViewControler.swift
//  ContactList
//
//  Created by Kirill Lozovoi on 10/19/22.
//

import UIKit

class DetailsViewControler: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
