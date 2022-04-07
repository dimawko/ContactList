//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Dinmukhammed Sagyntkan on 07.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getPersons()
        
        guard let firstTVC = viewControllers?.first as? FirstTableViewController else { return }
        guard let secondTVC = viewControllers?.last as? SecondTableViewController else { return }
        
        firstTVC.personList = persons
        secondTVC.personList = persons
    }
}
