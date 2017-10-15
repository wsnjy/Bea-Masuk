//
//  SearchViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/14/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController, UITextFieldDelegate, BottomBackground, FooterSearchDelegate {

    let cellName = "CalculatorCell"
    let titleController = "Tarif Bea Masuk"
    var fieldValue:[String] = ["","",""]

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackButton()
        configTable()
        showBottomBackground()
        title = titleController
    }
    
    func configTable() {
        tableView.tableFooterView = UIView()
        tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        tableView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height - 45)
    }

    func footerSection(_ section:Int) -> UIView{

        let footer = FooterSearch.loadFromXib()
        return footer
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension SearchViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CalculatorViewModel().configSearch.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CalculatorViewModel().configSearch[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let lastRowIndex = tableView.numberOfRows(inSection: indexPath.section) - 1

        if indexPath.row == lastRowIndex  {
            return cellForButton(indexPath)
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CalculatorCell
            
            cell.condition = .cari
            cell.setDataCell(indexPath: indexPath, delegate: self)
            
            return cell
        }
    }
    
}

extension SearchViewController {
    
    func cellForButton(_ indexPath:IndexPath) -> UITableViewCell{
        
        let titleButton:String = {
            var title = "SIMPAN"
            if indexPath.section == 0 {
                title = "CARI"
            }
            return title
        }()
        
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "Cell")
        let footer = FooterSearch.loadFromXib() as FooterSearch
        footer.delegate = self
        footer.btn.tag = indexPath.section
        footer.btn.setTitle(titleButton, for: .normal)
        
        cell.selectionStyle = .none
        cell.separatorInset = UIEdgeInsetsMake(0, 1000, 0, 0)
        cell.addSubview(footer)
        return cell
    }
    
    func buttonAction(_ sender: Int) {
        view.endEditing(true)
        print(fieldValue)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        fieldValue[textField.tag] = textField.text!
    }
    
}
