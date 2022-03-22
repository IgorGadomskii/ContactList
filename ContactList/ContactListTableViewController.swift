

import UIKit

class ContactListTableViewController: UITableViewController {
    
    var persons: [Person] = []

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactNameCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let contactName = persons[indexPath.row]
        content.text = contactName.fullname
        
        cell.contentConfiguration = content

        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let moreInfoVC =
                    segue.destination as? MoreInformationViewController else {return}
            moreInfoVC.person = persons[indexPath.row]
        }
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moreInformation", sender: self)
    }

}
