//
//  ReloadView.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/3/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

protocol ReloadViewDelegate: class {
    func reload()
}

enum CaseReload {
    case homeKurs
    case pageKurs
}

class ReloadView: UIView {
    
    weak var delegate:ReloadViewDelegate?
    
    @IBOutlet weak var iconEmojiSad: UIImageView!
    @IBOutlet weak var btnReload: ButtonCalculate!
    @IBOutlet weak var textSorry: UILabel!
    @IBOutlet weak var checkConnection: UILabel!

    var caseReload:CaseReload?
    let borderHomeKurs:UIColor = UIColor.white
    let borderPageKurs:UIColor = UIColor.init(red: 182.0/255.0, green: 213.0/255.0, blue: 236.0/255.0, alpha: 1)

    override func awakeFromNib() {
        configView(.pageKurs)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    @IBAction func reloadButtonAction(_ sender: UIButton) {
        delegate!.reload()
    }
    
}

extension ReloadView {
    
    func configView(_ type:CaseReload) {
        iconAndLabelConfig(type)
        buttonConfig()
    }
    
    func iconAndLabelConfig(_ type:CaseReload) -> Void {
        
        var icon = UIImage()
        var color:UIColor = borderHomeKurs
        
        switch type {
        case .homeKurs:
            icon = #imageLiteral(resourceName: "emoji_sad_kurs")
        case .pageKurs:
            icon = #imageLiteral(resourceName: "emoji_sad")
            color = borderPageKurs
        }
        
        iconEmojiSad.image = icon
        btnReload.setTitleColor(color, for: .normal)
        textSorry.textColor = color
        checkConnection.textColor = color
        
    }
    
    func buttonConfig() {
        btnReload.rounded(5)
        btnReload.addBorder(1, getColorBorder(.pageKurs))
    }
    
    func getColorBorder(_ type:CaseReload) -> UIColor {
        switch type {
        case .homeKurs:
            return borderHomeKurs
        case .pageKurs:
            return borderPageKurs
        }
    }
    
}
