
import UIKit

class ContactsTableViewController: UITableViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.sectionFooterHeight = 0
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return model.recent.count
        case 1: return model.friends.count
        default: break
        }
        
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath) as! ContactsTableViewCell
        
        switch (indexPath as NSIndexPath).section {
        case 0:
            cell.contactsImageView.image = UIImage(named: model.recent[(indexPath as NSIndexPath).row]["contactImage"]!)
            cell.contactsNameLabel.text = model.recent[(indexPath as NSIndexPath).row]["name"]
        case 1:
            cell.contactsImageView.image = UIImage(named: model.friends[(indexPath as NSIndexPath).row]["contactImage"]!)
            cell.contactsNameLabel.text = model.friends[(indexPath as NSIndexPath).row]["name"]
        default: break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! ContactsHeaderTableViewCell
        
        switch section {
        case 0: cell.headerLabel.text = "HEADS OF DEPARTMENTS"
        case 1: cell.headerLabel.text = "FACULTIES"
        default: break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "InfoCardSegue" {
            let destination = segue.destination as! InfoCardTableViewController
            destination.selectedIndexPath = tableView.indexPathForSelectedRow!
        }
    }

}




















