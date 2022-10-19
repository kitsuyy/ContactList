//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Kirill Lozovoi on 10/19/22.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    // MARK: - Private Properties
    private var personList = Person.getPerson()
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "track", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = "\(person.name) \(person.surname)"
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? DetailsViewControler
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        detailsVC?.person = personList[indexPath.row]
    }
}
