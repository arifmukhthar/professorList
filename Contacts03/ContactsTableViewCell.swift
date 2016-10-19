
import UIKit

class ContactsTableViewCell: UITableViewCell {

    // MARK: - When Cell Loads
    override func awakeFromNib() {
        super.awakeFromNib()
        contactsImageView.layer.cornerRadius = contactsImageView.layer.frame.size.width/2
        contactsImageView.layer.masksToBounds = true
    }
    
    // MARK: - Outlets
    @IBOutlet weak var contactsImageView: UIImageView!
    @IBOutlet weak var contactsNameLabel: UILabel!

}
