
import UIKit

class InfoCardTableViewController: UITableViewController {

    // MARK: - Selected Row
    var selectedIndexPath = IndexPath()
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell", for: indexPath) as! InfoCardTableViewCell
        
        switch (selectedIndexPath as NSIndexPath).section {
        case 0:
            cell.infoCardImageView.image = UIImage(named: model.recent[(selectedIndexPath as NSIndexPath).row]["infoImage"]!)
            cell.infoCardNameLabel.text = model.recent[(selectedIndexPath as NSIndexPath).row]["name"]
            cell.infoCardNumberLabel.text = model.recent[(selectedIndexPath as NSIndexPath).row]["number"]
            cell.infoCardEmailLabel.text = model.recent[(selectedIndexPath as NSIndexPath).row]["email"]
            cell.infoCardNotesLabel.text = model.recent[(selectedIndexPath as NSIndexPath).row]["notes"]
        case 1:
            cell.infoCardImageView.image = UIImage(named: model.friends[(selectedIndexPath as NSIndexPath).row]["infoImage"]!)
            cell.infoCardNameLabel.text = model.friends[(selectedIndexPath as NSIndexPath).row]["name"]
            cell.infoCardNumberLabel.text = model.friends[(selectedIndexPath as NSIndexPath).row]["number"]
            cell.infoCardEmailLabel.text = model.friends[(selectedIndexPath as NSIndexPath).row]["email"]
            cell.infoCardNotesLabel.text = model.friends[(selectedIndexPath as NSIndexPath).row]["notes"]
        default: break
        }

        return cell
    }
}
















