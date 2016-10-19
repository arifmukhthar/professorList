
import UIKit

class InfoCardTableViewCell: UITableViewCell {

    // MARK: - When Cell Loads
    override func awakeFromNib() {
        super.awakeFromNib()
        infoCardImageView.layer.cornerRadius = infoCardImageView.layer.frame.size.width/2
        infoCardImageView.layer.masksToBounds = true
    }
    
    // MARK: - Outlets
    @IBOutlet weak var infoCardImageView: UIImageView!
    @IBOutlet weak var infoCardNameLabel: UILabel!
    @IBOutlet weak var infoCardNumberLabel: UILabel!
    @IBOutlet weak var infoCardEmailLabel: UILabel!
    @IBOutlet weak var infoCardNotesLabel: UILabel!

}
