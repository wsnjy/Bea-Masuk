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
            print("config stack kurs")
            configStackKurs(removeIDR())
        }else{
            topText.isHidden = true
            bottomText.isHidden = true
//            stackLeft.removeFromSuperview()
//            stackRight.removeFromSuperview()
            stackLeft.isHidden = true
            stackRight.isHidden = true
            showReloadView()
        }
        
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
        mainStack.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
    func reload() {
        print("reload view action")
        getAllRates()
    }
    
    func getAllRates() -> Void {
        let api = APIManager()
        api.getCurrency(base: "USD", completion: {(result : JSON) -> Void in
            self.configAllRates(data: result["rates"])
            print(result)
        })
    }

    func configAllRates(data:JSON) -> Void {
        
        var rates:[String:String] = [:]
        
        for (key,value) in data{
            rates[key as String] = value.stringValue
        }

        let viewModel = HomeViewModel(kurs: Kurs.configRates(data: rates))
        allRates  = viewModel.kurs
//        mainStack.addArrangedSubview(stackLeft)
//        mainStack.addArrangedSubview(stackRight)
        stackLeft.isHidden = false
        stackRight.isHidden = false
        reloadView.isHidden = true
        configContent()
        sendDataToHome(rates)
    }
    
    func sendDataToHome(_ rates:[String:String]){
        delegate.setDataOnKurs(rates)
    }

    
}
