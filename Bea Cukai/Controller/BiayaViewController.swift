//
//  BiayaViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/17/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class BiayaViewController: UITableViewController, BottomBackground {

    let numberOfSection = 1
    let numberOfRow = 5
    let titleVC  = "Kalkulator"
    let cellName = "ResultCell"
    
    var dataForm:[Decimal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewConfiguration()
        print(dataForm)
        showBottomBackground()
        addBarButtonClose()
    }
    
    func setModel() {
        let biayaViewModel = BiayaViewModel(biaya: Biaya.dataBiaya(data: dataForm))
        dataForm = [biayaViewModel.totalBeaMasuk(), biayaViewModel.totalPPN(), biayaViewModel.totalPPN(), biayaViewModel.totalPPH(), biayaViewModel.totalPungutan()]
    }

    override func viewWillAppear(_ animated: Bool) {
        title = titleVC
    }
    
    func tableViewConfiguration() {
        
        tableView.isScrollEnabled = false
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

extension BiayaViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSection
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRow
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: cellName) as! ResultCell
        cell.configForBiaya(indexPath,dataForm)
        return cell
    }

}
