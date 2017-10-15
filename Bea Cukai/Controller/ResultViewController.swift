//
//  ResultViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/15/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class ResultViewController: UITableViewController {

    let cellName = "ResultCell"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName) as! ResultCell
        return cell
    }



}
