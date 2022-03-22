

import UIKit

class MoreInformationViewController: UITabBarController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text  = person.fullname
        emailLabel.text = person.email
        phoneNumberLabel.text = person.phoneNumber
    }

}
