//
//  KursViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/6/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class KursViewController: UIViewController, BottomBackground {
    
    @IBOutlet weak var stackRight: UIStackView!
    @IBOutlet weak var stackLeft: UIStackView!
    @IBOutlet weak var mainStack: UIStackView!
    
    var allRates:[String:Kurs] = [:]
    let titleVC = "Info Kurs"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackButton()
        showBottomBackground()
        configStackKurs(removeIDR())
        title = titleVC
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
        
        let reloadView = ReloadView.loadFromXib() as ReloadView
        reloadView.configView(.pageKurs)
        reloadView.delegate = self
        view.addSubview(reloadView)
     
    }
    
    func reload() {
        print("reload view action")
    }
    
}
