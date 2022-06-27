
import UIKit
import CoreData

class CustomCardCell: UITableViewCell
{
    @IBOutlet weak var imageUser: UIImageView!
    
    @IBOutlet weak var labelFullName: UILabel!
    @IBOutlet weak var labelOffice: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
     
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(_ value: NSManagedObject)
    {
        labelFullName.text = "Name: \(value.value(forKey: "name") as! String) \(value.value(forKey: "lastName") as! String)"
        labelEmail.text = "E-mail: \(value.value(forKey: "email") as! String)"
        labelOffice.text = "office: \(value.value(forKey: "office") as! String)"
    }
}
