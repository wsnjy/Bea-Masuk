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
    let heightHeaderSection:CGFloat = 44
    let heightForRow:CGFloat = 65
    let titleVC  = "Kalkulator"
    let cellName = "ResultCell"
    
    var dataForm:[Decimal] = []
    
    let titleSection:UIView = {
        
        let titleLabel = UILabel()
        titleLabel.frame = CGRect(x: 12, y: 12, width: 250, height: 22)
        titleLabel.text = "Tarif Bea Masuk dan PDRI"
        titleLabel.font = UIFont(name: "SourceSansPro-SemiBold", size: 16)
        titleLabel.textColor = UIColor.init(red: 3.0/255.0, green: 3.0/255.0, blue: 3.0/255.0, alpha: 1)
        
        let view = UIView()
        view.backgroundBeaColor()
        view.addSubview(titleLabel)

        return view
        
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewConfiguration()
        showBottomBackground()
        addBarButtonClose()
        view.backgroundBeaColor()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        title = titleVC
    }
    
    func setModel() {
        let biayaViewModel = BiayaViewModel(biaya: Biaya.dataBiaya(data: dataForm))
        dataForm = [biayaViewModel.totalBeaMasuk(), biayaViewModel.totalPPN(), biayaViewModel.totalPPN(), biayaViewModel.totalPPH(), biayaViewModel.totalPungutan()]
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension BiayaViewController {
    
    func tableViewConfiguration() {
        
        tableView.isScrollEnabled = false
        tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        tableView.tableFooterView = UIView()
        tableView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height - 45)
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return titleSection
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return heightHeaderSection
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSection
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRow
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightForRow
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: cellName) as! ResultCell
        cell.configForBiaya(indexPath,dataForm)
        return cell
    }

}
