//
//  HomeViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/21/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, BottomBackground{
    
    @IBOutlet weak var infoKursTitle: UILabel!
    @IBOutlet weak var usdValue: UILabel!
    @IBOutlet weak var eurValue: UILabel!
    @IBOutlet weak var cnyValue: UILabel!
    @IBOutlet weak var jpyValue: UILabel!

    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var cnyLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!

    @IBOutlet weak var viewKurs: ViewInStack!
    @IBOutlet weak var viewTopLeft: ViewInStack!
    @IBOutlet weak var viewTopRight: ViewInStack!
    @IBOutlet weak var viewBottomLeft: ViewInStack!
    @IBOutlet weak var viewBottomRight: ViewInStack!
    
    @IBOutlet weak var btnCalculate: UIButton!

    let imageBottom:UIImageView = {
        return UIImageView.init(image: UIImage(named: "bg_bottom"))
    }()
    
    let roundedViewValue: CGFloat = 5
    let roundedButtonValue: CGFloat = 32
    let titleController = "Bea Masuk"
    let backgroundKurs = UIColor.init(patternImage: UIImage.init(named: "box")!)
    var allRates:[String:String] = [:]

    var homeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewConfiguration()
        getAllRates()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        title = titleController
    }
    
    func viewConfiguration() {
        infoKursViewConfig()
        menuConfig()
        showBottomBackground()
    }
    
    func infoKursViewConfig() {
        infoKursTitle.addTextSpacing()
        viewKurs.backgroundColor = backgroundKurs
        viewKurs.rounded(roundedViewValue)
    }
    
    func menuConfig() {
        viewTopLeft.addShadowAndRounded(roundedViewValue) /* Rumus */
        viewTopRight.addShadowAndRounded(roundedViewValue) /* Cara Hitung */
        viewBottomLeft.addShadowAndRounded(roundedViewValue) /* FAQ */
        viewBottomRight.addShadowAndRounded(roundedViewValue) /* Pengaduan */
    }

    @IBAction func menuButtonActions(_ sender: UIButton) {
        print("sender \(sender.tag)")
    }
    
    @IBAction func openCalculator(_ sender: ButtonCalculate) {
        let calculator = CalculatorViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(calculator, animated: true)
    }
    
    func getAllRates() -> Void {
        let api = APIManager()
        api.getCurrency(base: "USD", completion: {(result : JSON) -> Void in
            self.configAllRates(data: result["rates"])
        })
    }
    
    func configAllRates(data:JSON) -> Void {
        
        for (key,value) in data{
            allRates[key as String] = value.stringValue
        }
        print("all rates \(allRates)")
        setDataOnKurs()
    }
}

extension HomeViewController {
    
    func setDataOnKurs() {
        
        homeViewModel = HomeViewModel(kurs: Kurs.configRates(data: allRates))
        
        usdValue.text = homeViewModel.currency(.Indonesia)
        eurValue.text = homeViewModel.currency(.EURO)
        cnyValue.text = homeViewModel.currency(.China)
        jpyValue.text = homeViewModel.currency(.Japan)
        
        euroLabel.text  = homeViewModel.symbol(.EURO)
        jpyLabel.text   = homeViewModel.symbol(.Japan)
        cnyLabel.text   = homeViewModel.symbol(.China)
        
    }
    
}
