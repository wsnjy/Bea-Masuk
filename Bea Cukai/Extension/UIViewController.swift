//
//  NavigationItem.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/30/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

extension UIViewController {

    // MARK : CLOSE BARBUTTON
    func addBarButtonClose() {
        
        let btn = UIButton.init()
        btn.frame = CGRect(x:0, y:0, width:13, height:13)
        btn.setBackgroundImage(UIImage(named: "close")?.withRenderingMode(.alwaysOriginal), for: .normal)
        btn.addTarget(self, action: #selector(dismisss), for: .touchUpInside)
        
        let btnX = UIBarButtonItem(customView:btn)
        self.navigationItem.leftBarButtonItem = btnX

    }
    
    @objc func dismisss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK : LOAD NIB AND STORYBOARD
    
    class func loadFromNib<T: UIViewController>() -> T {
        return T(nibName: String(describing: self), bundle: nil)
    }
    
    class func loadController<T: UIViewController>() -> T {
        return T(nibName: nil, bundle: nil)
    }
    
    
    class func instantiateFromStoryboard(_ name: String = "Main") -> Self{
        return instantiateFromStoryboardHelper(name)
    }
    
    fileprivate class func instantiateFromStoryboardHelper<T>(_ name: String) -> T{
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let identifier = String(describing: self)
        let controller = storyboard.instantiateViewController(withIdentifier: identifier) as! T
        return controller
    }

    func setBackButton(){
        
        let yourBackImage = UIImage(named: "back")
        navigationController?.navigationBar.backIndicatorImage = yourBackImage
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = yourBackImage
        navigationController?.navigationBar.topItem?.title = ""
    }
}
