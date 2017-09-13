//
//  CalculatorViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/11/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class CalculatorViewController: UITableViewController, UITextFieldDelegate{

    let cellName = "CalculatorCell"
    var dataForm:[Any] = []
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
        
        let btn: UIBarButtonItem = UIBarButtonItem.init(title: "Save", style: .plain, target: self, action: #selector(self.saveAction))
        navigationItem.rightBarButtonItem = btn
        
        setupContentView()
    
    }
    
    func saveAction() {
        view.endEditing(true)
        print("the data \(dataForm)")
    }
    
    func setupContentView() {
        
        tableView.tableHeaderView = headerView

        headerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        headerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 100)
        

    }
    
}

extension CalculatorViewController {
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CalculatorCell
        
        cell.txtLabel.text = topTitle[indexPath.row]
        cell.textField.delegate = self
        cell.textField.tag = indexPath.row
        cell.textField.placeholder = textFieldPlaceholder[indexPath.row]
        
        return cell
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let cell : CalculatorCell = self.tableView.cellForRow(at: IndexPath(row: textField.tag, section: 0)) as! CalculatorCell
        dataForm.insert(cell.textField.text!, at: textField.tag)
        print(cell.textField.text!)
    }
    
    
}


