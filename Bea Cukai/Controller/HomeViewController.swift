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
    var allRates:[String:String] = ["EUR": "0.85419", "GBP": "0.7648", "MYR": "4.2375", "IDR": "13513", "HKD": "7.8062", "JPY": "112.95", "CNY": "6.6534", "SGD": "1.3664", "AUD": "1.2864"]

//    let kursViewModel = KursViewModel(kurs: Kurs.configRates(data:allRates, rate: .Britain))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewConfiguration()
        getAllRates()
        dataJson()
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
    
    func setValueInfoKurs() {
        usdValue.text = ""
        eurValue.text = ""
        cnyValue.text = ""
        jpyValue.text = ""
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
    
    func dataJson() {
        do {
            if let file = Bundle.main.url(forResource: "btki", withExtension: "json") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                if let object = json as? [String: Any] {
                    // json is a dictionary
                    print(object)
                } else if let object = json as? [[String:String]] {
                    // json is a array

                    let filteredTarif = object.filter({
                        $0["uraian"]?.range(of: "kendaraan") != nil
                    })
                    
                    print(filteredTarif[0])
                    
                } else {
                    print("JSON is invalid")
                }
            } else {
                print("no file")
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func getAllRates() -> Void {
        let api = APIManager()
        api.getCurrency(base: "USD", completion: {(result : JSON) -> Void in
//            self.configAllRates(data: result["rates"])
        })
    }
    
    func configAllRates(data:JSON) -> Void {
        
        for (key,value) in data{
            allRates[key as String] = value.stringValue
        }
        
        print(self.allRates)
        
    }
    
}
