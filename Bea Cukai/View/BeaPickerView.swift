//
//  BeaPickerView.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/15/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

protocol BeaPickerDelegate: class {
    func donePicker()
    func addValueToTextField(value:String)
}

enum PickerType {
    case search
    case tarif
    case pembebasan
}

class BeaPickerView: UIView , UIPickerViewDelegate, UIPickerViewDataSource{
    
    weak var delegate:BeaPickerDelegate?
    var pickerType:PickerType = .search
    
    @IBOutlet weak var buttonDone: UIBarButtonItem!
    @IBOutlet weak var picker: UIPickerView!
    
    let numberOfComponents  = 1    

    override func awakeFromNib() {
        setPicker()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    @IBAction func done(_ sender: Any) {
        delegate?.donePicker()
    }

    func setPicker() {
        picker.delegate = self
        picker.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return numberOfComponents
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return getDataForPicker().count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return getDataForPicker()[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        delegate?.addValueToTextField(value: getDataForPicker()[row])
    }
    
    func getDataForPicker() -> [String] {
        
        switch pickerType {
        case .pembebasan:
            return BeaPickerViewModel().pembebasanPicker
        case .search:
            return BeaPickerViewModel().searchPicker
        case .tarif:
            return BeaPickerViewModel().tarifPicker
        }

    }


}

