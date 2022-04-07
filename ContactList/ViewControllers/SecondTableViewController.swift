//
//  SecondTableViewController.swift
//  ContactList
//
//  Created by Dinmukhammed Sagyntkan on 07.04.2022.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    var personList: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(personList[section].name) \(personList[section].surname)"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondVCCell", for: indexPath)
        let person = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone.fill")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "envelope.open.fill")
        }
        cell.contentConfiguration = content

        return cell
    }
}
