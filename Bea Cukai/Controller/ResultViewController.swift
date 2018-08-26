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
    let titleVC = "Tarif Bea Masuk"
    let cellName = "ResultCell"
    let titleAlert = "Maaf"
    let messageAlert = "Sepertinya daftar tarif belum tersedia, silahkan input manual besarnya tarif atau anda dapat memilih yang lebih sesuai"
    let manualTitle = "Manual"
    let lainTitle = "Pilih Lainnya"

    let numberOfSection = 1
    let heightHeaderSection:CGFloat = 0
    var result:[Tarif] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBarButtonClose()
        view.backgroundBeaColor()
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
        actionSelect(indexPath)
    }
    
    func actionSelect(_ indexPath:IndexPath) {
        
        let value:String = result[indexPath.row].percent!
        
        print("valuenya adalah \(value)")
        guard value.count > 0 else {
            showAlert()
            return
        }
        
        delegate?.sendValue(value)
        dismisss()
    }
    
}

extension ResultViewController {
    
    func showAlert() {
        
        let alert = UIAlertController(title: titleAlert, message: messageAlert , preferredStyle: .alert)
        let manual = UIAlertAction(title: manualTitle, style: .default) {
            action in
            self.dismisss()
        }
        let lain = UIAlertAction(title: lainTitle, style: .cancel, handler: nil)
        
        alert.addAction(manual)
        alert.addAction(lain)
        
        self.present(alert, animated: true, completion: nil)
        
    }

    
}
