//
//  CalculatorViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/11/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class CalculatorViewController: UITableViewController, UITextFieldDelegate{

    @IBOutlet weak var btnHitung: ButtonCalculate!
    
    let titleVC =  "Kalkulator"
    let cellName = "CalculatorCell"
    let heightRow:CGFloat = 70
    let numberOfSection = 1
    
    var dataForm:[Decimal] = {
        return CalculatorViewModel().dummyData
    }()
        
    override func viewDidLoad() {
        
        super.viewDidLoad()
        title = titleVC
        tableSetting()
        settingButton()
        addBarButtonClose()
    }
    
    func tableSetting() {
        tableView.sectionFooterHeight = UITableViewAutomaticDimension
    }
    
    func settingButton() {
        btnHitung.rounded(5)
        btnHitung.addTarget(self, action: #selector(self.saveAction), for:.touchUpInside)
    }
    
    func saveAction() {
        view.endEditing(true)
        let biayaViewModel = BiayaViewModel(biaya: Biaya.dataBiaya(data: dataForm))
        print("the data \(biayaViewModel.totalPungutan())")
    }
        
}

extension CalculatorViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSection
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CalculatorViewModel().rowCount()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return getHeightForRow(indexPath, UILabel(), .calculator)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CalculatorCell
        
        cell.condition = .cari
        cell.setDataCell(indexPath: indexPath, delegate: self)
        
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return heightRow
//    }
    
//    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        return addFooterSearch(section)
//    }


    func addFooterSearch(_ section:Int) -> UIView {
        let viewFooter = FooterSearch.loadFromXib() as FooterSearch
        viewFooter.delegate = self
        viewFooter.btn.tag = section
        return viewFooter
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        guard  textField.hasText else {
            return
        }
        
        print(textField.text!)
        print(dataForm[textField.tag])
        dataForm[textField.tag] = Decimal(string:textField.text!)!
    }
    
    func getHeightForRow(_ indexPath: IndexPath, _ label: UILabel, _ condition: cellCondition) -> CGFloat {
        return heightRow
    }
    
}


extension CalculatorViewController: FooterSearchDelegate {
    func wedus(_ sender:Int) {
        print("wedus \(sender)")
    }
}


