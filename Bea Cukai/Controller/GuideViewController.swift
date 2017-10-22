//
//  GuideViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/22/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

enum GuideType{
    case developer
    case rumus
    case pengaduan
}

class GuideViewController: UIViewController, BottomBackground {

    var guide:GuideType = .developer
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        loadViewWithCase(guide)
    }

    func configView(){
        view.backgroundBeaColor()
        showBottomBackground()
        setBackButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension GuideViewController {
    
    func loadViewWithCase(_ type:GuideType) {
        
        let viewModel = GuideViewModel(type: type)
        
        title = viewModel.titles()
        
        let nib = UINib(nibName: viewModel.nibName(), bundle: nil)
        let dev = nib.instantiate(withOwner: self, options: nil).first as! UIView
        dev.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 300)
        view.addSubview(dev)

    }
    
    
}
