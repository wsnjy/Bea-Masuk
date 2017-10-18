//
//  ResultViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/15/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

protocol resultDelegate {
    func sendValue(_ value:String)
}

class ResultViewController: UITableViewController, BottomBackground {

    var delegate:resultDelegate?
    
    let cellName = "ResultCell"
    let titleVC    = "Tarif Bea Masuk"
    let numberOfSection = 1
    let heightHeaderSection:CGFloat = 44
    var result:[Tarif] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBarButtonClose()
        tableViewConfiguration()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        title = titleVC
    }
    
    func tableViewConfiguration() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 65
        tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        tableView.tableFooterView = UIView()
        tableView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height - 45)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
    
extension ResultViewController {
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSection
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return result.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName) as! ResultCell
        cell.configCell(indexPath: indexPath, data: result)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return heightHeaderSection
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(result[indexPath.row].percent!)
        delegate?.sendValue(result[indexPath.row].percent!)
        dismisss()
    }
    
}
