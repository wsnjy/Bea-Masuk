//
//  HomeViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/21/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var infoKursTitle: UILabel!
    @IBOutlet weak var usdValue: UILabel!
    @IBOutlet weak var eurValue: UILabel!
    @IBOutlet weak var cnyValue: UILabel!
    @IBOutlet weak var jpyValue: UILabel!
    
    @IBOutlet weak var viewKurs: ViewInStack!
    @IBOutlet weak var viewTopLeft: ViewInStack!
    @IBOutlet weak var viewTopRight: ViewInStack!
    @IBOutlet weak var viewBottomLeft: ViewInStack!
    @IBOutlet weak var viewBottomRight: ViewInStack!
    
    @IBOutlet weak var btnCalculate: ButtonCalculate!

    let roundedViewValue: CGFloat = 5
    let roundedButtonValue: CGFloat = 32
    let titleController = "Bea Masuk"
    let backgroundKurs = UIColor.init(patternImage: UIImage.init(named: "box")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewConfiguration()
    }
    
    func viewConfiguration() {
        
        self.title = titleController
        
        infoKursTitle.addTextSpacing()
        viewKurs.backgroundColor = backgroundKurs
        viewKurs.rounded(roundedViewValue)
        
        viewTopLeft.addShadowAndRounded(roundedViewValue)
        viewTopRight.addShadowAndRounded(roundedViewValue)
        viewBottomLeft.addShadowAndRounded(roundedViewValue)
    
        viewBottomRight.addShadowAndRounded(roundedViewValue)
        btnCalculate.rounded(roundedButtonValue)
        
    }

    @IBAction func menuButtonActions(_ sender: UIButton) {
        print("sender \(sender.tag)")
    }
    
    @IBAction func openCalculator(_ sender: ButtonCalculate) {
        print("open calculator")
    }
    
    
}
