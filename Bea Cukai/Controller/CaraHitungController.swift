//
//  CaraHitungController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/24/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class CaraHitungController: UITableViewController {

    let cellName = "CaraHitungCell"
    let titleVC  = "Cara Hitung"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTable()
        setBackButton()
        title = titleVC
        view.backgroundBeaColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension CaraHitungController {
    
    func configTable(){
        tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        tableView.sectionFooterHeight = UITableViewAutomaticDimension
        tableView.tableFooterView = UIView()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CaraHitungCell
        cell.configContent(indexPath)
        
        return cell
    }
}
