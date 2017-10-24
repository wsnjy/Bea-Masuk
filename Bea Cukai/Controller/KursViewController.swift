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
    @IBOutlet weak var topText: UILabel!
    @IBOutlet weak var bottomText: UILabel!

    var allRates:[String:Kurs] = [:]
    let titleVC = "Info Kurs"
    
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
            topText.isHidden = true
            bottomText.isHidden = true
            stackLeft.removeFromSuperview()
            stackRight.removeFromSuperview()
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
        
        let reloadView = ReloadView.loadFromXib() as ReloadView
        reloadView.configView(.pageKurs)
        reloadView.delegate = self
        mainStack.addArrangedSubview(reloadView)
        mainStack.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
    func reload() {
        print("reload view action")
        getallrate
    }
    
}
