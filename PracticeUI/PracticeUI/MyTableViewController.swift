//
//  MyTableViewController.swift
//  PracticeUI
//
//  Created by 영현 on 11/9/23.
//

import UIKit

class MyTableViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    let friendsName: [String] = ["Henry", "Tobi", "Jay"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = .blue
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }
}

extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myFirstCell", for: indexPath)
        cell.textLabel?.text = friendsName[indexPath.row]
        return cell
    }
}
