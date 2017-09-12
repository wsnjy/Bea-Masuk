//
//  CalculatorViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/11/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class CalculatorViewController: UITableViewController {

    
    var headerView: UIView = {
        let header = UIView()
        return header
    }()
    
    let topTitle = ["FOB Barang ($)",
                    "Kurs ($)",
                    "Tarif Bea Masuk (%)",
                    "Tarif PPN (%)",
                    "Tarif PPN BM (%)",
                    "NPWP - API",
                    "Pembebasan FOB",
                    "Asuransi ($)",
                    "Freight ($)"]
    
    let textFieldPlaceholder = ["250",
                                "13000",
                                "10",
                                "10",
                                "10",
                                "Pilih",
                                "Pilih",
                                "10",
                                "10"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupContentView()
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupContentView() {
        
        tableView.tableHeaderView = headerView

        headerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        headerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 100)
        

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topTitle.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "CalculatorCell", for: indexPath) as! CalculatorCell
        
        cell.txtLabel.text = topTitle[indexPath.row]
        cell.textField.placeholder = textFieldPlaceholder[indexPath.row]
        
        return cell
     }
    
    
    
}
