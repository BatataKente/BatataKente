//
//  ViewController.swift
//  TableView
//
//  Created by Evandro Rodrigo Minamoto on 26/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        self.myTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "CardCell")
        
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cardCell: CardCell? = myTableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as? CardCell
        
        
        return cardCell ?? UITableViewCell ()
    }
    
}
