//
//  KursViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/6/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

protocol KursDelegate {
    func setDataOnKurs(_ allRates:[String:String])
}

class KursViewController: UIViewController, BottomBackground {
    
    var delegate:KursDelegate!
    
    @IBOutlet weak var stackRight: UIStackView!
    @IBOutlet weak var stackLeft: UIStackView!
    @IBOutlet weak var mainStack: UIStackView!
    @IBOutlet weak var topText: UILabel!
    @IBOutlet weak var bottomText: UILabel!

    var allRates:[String:Kurs] = [:]
    let titleVC = "Info Kurs"
    var reloadView:ReloadView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = titleVC
        setBackButton()
        showBottomBackground()
        configContent()
    }
    
    func configContent() {
        
        if allRates.count > 0 {
            configStackKurs(removeIDR())
        }else{
            configViewForReloadView(true)
            showReloadView()
        }
    }
    
    func configViewForReloadView(_ isNoConnection:Bool) {
        
        topText.isHidden = isNoConnection
        bottomText.isHidden = isNoConnection
        stackLeft.isHidden = isNoConnection
        stackRight.isHidden = isNoConnection
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    func configStackKurs(_ data:[String:Kurs]) {

        let halfSide = data.count / 2
        var i = 0
        
        for (_,value) in data {
            
            print(value.valueInRupiah)
            let kursView = KursInStack.loadFromXib() as KursInStack
            
            if i < halfSide{
                kursView.setDataForView(value,.leftSide)
                stackLeft.addArrangedSubview(kursView)
            }else{
                kursView.setDataForView(value,.rightSide)
                stackRight.addArrangedSubview(kursView)
            }
            
            i += 1
        }
        
    }
    
    func removeIDR() -> [String:Kurs] {
        allRates.removeValue(forKey: "IDR")
        return allRates
    }

}

extension KursViewController: ReloadViewDelegate {
    
    func showReloadView() -> Void {
        
        reloadView = ReloadView.loadFromXib() as ReloadView
        reloadView.configView(.pageKurs)
        reloadView.delegate = self
        mainStack.addArrangedSubview(reloadView)
        
    }
    
    func reload() {
        getAllRates()
    }
    
    func getAllRates() -> Void {
        APIManager().getCurrency(base: "USD", completion: {(result : JSON, error: Bool) -> Void in
            
            if (!error){
                self.configAllRates(data: result["rates"])
            }else{
                print("no connection")
                self.configContent()
            }
        })
    }

    func configAllRates(data:JSON) -> Void {
        
        var rates:[String:String] = [:]
        
        for (key,value) in data{
            rates[key as String] = value.stringValue
        }

        let viewModel = HomeViewModel(kurs: Kurs.configRates(data: rates))
        allRates  = viewModel.kurs
        
        reloadView.removeFromSuperview()
        configViewForReloadView(false)
        configContent()
        sendDataToHome(rates)
    }
    
    func sendDataToHome(_ rates:[String:String]){
        delegate.setDataOnKurs(rates)
    }

    
}
