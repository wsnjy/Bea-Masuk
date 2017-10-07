//
//  KursViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/6/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class KursViewController: UIViewController {

    @IBOutlet weak var stackRight: UIStackView!
    @IBOutlet weak var stackLeft: UIStackView!
    @IBOutlet weak var mainStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        configStackKurs([])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
    func configStackKurs(_ data:[Kurs]) {
        
        let kursView = KursInStack.loadFromXib() as KursInStack
        let halfSide = data.count / 2
        
        for i in 0..<data.count {
            kursView.setDataForView(data[i])
            
            if i < halfSide{
                kursView.typeSide = .leftSide
                stackLeft.addArrangedSubview(kursView)
            }else{
                kursView.typeSide = .rightSide
                stackRight.addArrangedSubview(kursView)
            }
        }
        
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
