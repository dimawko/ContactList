//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Dinmukhammed Sagyntkan on 07.04.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var personsInfoLabels: [UILabel]!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels()
    }
}

extension DetailsViewController {
    private func setupLabels() {
        personsInfoLabels.forEach { label in
            switch label.tag {
            case 0:
                label.text = "\(person.name) \(person.surname)"
            case 1:
                label.text = "Phone: \(person.phoneNumber)"
            default:
                label.text = "Email: \(person.email)"
            }
        }
    }
}
