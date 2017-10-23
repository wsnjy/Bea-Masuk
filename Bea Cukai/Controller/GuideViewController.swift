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

class GuideViewController: UIViewController, BottomBackground, PengaduanDelegate {

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
        
        if type == .pengaduan {
            showPengaduan(nib: nib)
        }else{
            let dev = nib.instantiate(withOwner: self, options: nil).first as! UIView
            dev.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 300)
            view.addSubview(dev)
        }
    }
    
    func showPengaduan(nib:UINib) {
        
        let dev = nib.instantiate(withOwner: self, options: nil).first as! Pengaduan
        dev.delegate = self
        dev.setShadowForView()
        view.addSubview(dev)
        
        dev.translatesAutoresizingMaskIntoConstraints = false
        dev.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        dev.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        dev.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        dev.heightAnchor.constraint(equalToConstant: view.frame.size.height - 90).isActive = true

    }
    
}

extension GuideViewController {
    
    func pengaduanAction(_ type: pengaduanCase) {
        print("pengaduan action \(type)")
    }

}
