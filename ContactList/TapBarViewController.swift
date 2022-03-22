

import UIKit

class TapBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setContacts()
    }
    
    private func setContacts() {
        
        let persons = Person.getPersons()
        
        
        let contactsTC = viewControllers?.first as? ContactListTableViewController
        contactsTC?.persons = persons
        let extendedTC = viewControllers?.last as? ExtendedContactsTableViewController
        extendedTC?.persons = persons
  

    }
    


}
