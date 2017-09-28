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
    
    let cellName = "CalculatorCell"
    let heightRow:CGFloat = 70
    let numberOfSection = 1
    
    var dataForm:[Decimal] = {
        return CalculatorViewModel().dummyData
    }()
        
    override func viewDidLoad() {
        
        super.viewDidLoad()
        settingButton()
        
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
        return dataForm.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightRow
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CalculatorCell
        
        cell.condition = cellCondition.calculator
        cell.setDataCell(indexPath: indexPath, delegate: self)
        
        return cell
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        let cell : CalculatorCell = self.tableView.cellForRow(at: IndexPath(row: textField.tag, section: 0)) as! CalculatorCell
        
        guard  cell.textField.hasText else {
            return
        }
        
        dataForm[textField.tag] = Decimal(string:cell.textField.text!)!
        
        print(cell.textField.text!)
    }
    
    
}


