//
//  CalculatorViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/11/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class CalculatorViewController: UITableViewController, UITextFieldDelegate, BottomBackground, searchDelegate{
    
    @IBOutlet weak var btnHitung: ButtonCalculate!
    
    let titleVC =  "Kalkulator"
    let cellName = "CalculatorCell"
    
    let heightRow:CGFloat = 55
    let numberOfSection = 1
    
    let calculatorViewModel = CalculatorViewModel()
    
    var dataForm:[Decimal] = {
        return CalculatorViewModel().defaultData
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableSetting()
        setBackButton()
        settingButton()
        view.backgroundBeaColor()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        title = titleVC
        
//        var frame = tableView.frame
//        frame.size.height = view.frame.size.height - 90
//        tableView.frame = frame
//        showBottomBackground()
//        tableView.tableFooterView = UIView.init(frame: CGRect.zero)
//        print(tableView.frame.size.height)
//        print(view.frame.size.height)
        
    }
    
    func settingButton() {
        btnHitung.rounded(5)
        btnHitung.addTarget(self, action: #selector(self.saveAction), for:.touchUpInside)
    }
    
    func saveAction() {
        view.endEditing(true)
        let biaya = BiayaViewController()
        biaya.dataForm = setDataFormWithKurs()
        biaya.setModel()
        let nav = UINavigationController(rootViewController: biaya)
        self.present(nav, animated: true, completion: nil)
    }
        
}

extension CalculatorViewController {
    
    func tableSetting() {
        tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        tableView.sectionFooterHeight = UITableViewAutomaticDimension
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSection
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return calculatorViewModel.rowCount()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return getHeightForRow(indexPath, UILabel(), .calculator)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CalculatorCell
        
        cell.condition = .calculator
        cell.setDataCell(indexPath: indexPath, delegate: self)
        if dataForm[2] > 0 { cell.setDataTarif(indexPath,dataForm[2])}
        
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 2 {
            let search = SearchViewController()
            search.delegate = self
            self.navigationController?.pushViewController(search, animated: true)
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        guard  textField.hasText else {
            return
        }
        
        dataForm[textField.tag] = Decimal(string:textField.text!)!
    }
    
    func getHeightForRow(_ indexPath: IndexPath, _ label: UILabel, _ condition: cellCondition) -> CGFloat {
        return heightRow
    }
    
}

extension CalculatorViewController {
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        view.endEditing(true)
    }
    
    func sendValue(_ value: String) {
        
        var decimalValue = Decimal(string:value)
        
        guard decimalValue != nil else {
            decimalValue = 0
            return
        }
        
        dataForm[2] = decimalValue!
        tableView.reloadData()

    }
    
    func setDataFormWithKurs() -> [Decimal] {
        
        guard dataForm[1] == 0 else { return dataForm}
        
        dataForm[1] = calculatorViewModel.getKursUSD()
        return dataForm
    }
    
}

