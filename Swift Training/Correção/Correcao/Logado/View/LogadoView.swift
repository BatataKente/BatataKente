import UIKit
import CoreData

class LogadoView: UIViewController
{
    @IBOutlet weak var tableViewLogado: UITableView!
    @IBOutlet weak var collectionViewLogado: UICollectionView!
    
    weak var delegate: RegisterProtocol?
    
    var homeController = HomeController(),
        users: [NSManagedObject] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tableViewLogado.delegate = self
        self.tableViewLogado.dataSource = self
        
        self.collectionViewLogado.delegate = self
        self.collectionViewLogado.dataSource = self
        
        homeController.anotherRequest
        {result, error in
            if result
            {
                print("Data Ok")
                self.collectionViewLogado.reloadData()
            }
            else
            {
                print(error!)
            }
        }
        
        self.tableViewLogado.register(UINib(nibName: "CustomCardCell", bundle: nil), forCellReuseIdentifier: "CustomCardCell")
        
        self.collectionViewLogado.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
    }
    
    @IBAction func backButton(_ sender: UIButton)
    {
        dismiss(animated: true)
    }
}

extension LogadoView: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cardCell: CustomCardCell? = tableViewLogado.dequeueReusableCell(withIdentifier: "CustomCardCell", for: indexPath) as? CustomCardCell
        
        cardCell?.setup(users[indexPath.row])
        cardCell?.imageUser.image = UIImage(named: String(Int.random(in: 0...10)))
        
        return cardCell ?? UITableViewCell()
    }
}

extension LogadoView: UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        homeController.valeu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell: CollectionViewCell? = collectionViewLogado.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
        cell?.collectionViewImage.image = UIImage(named: String(homeController.valeu[indexPath.row].userId))
        cell?.collectionViewUserId.text = String(homeController.valeu[indexPath.row].userId)
        cell?.collectionViewTitle.text = homeController.valeu[indexPath.row].title
        cell?.collectionViewBody.text = homeController.valeu[indexPath.row].body
        
        return cell ?? UICollectionViewCell()
    }
}
