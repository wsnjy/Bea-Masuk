//
//  FAQViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 11/8/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

enum TypeFAQ {
    case titleFAQ
    case detailFAQ
}

class FAQViewController: UITableViewController {

    let cellNameTitle = "reuseIdentifier"
    let cellNameDetail = "CaraHitungCell"
    var typeFAQ:TypeFAQ = .titleFAQ
    let viewModel = FAQViewModel()
    var faqContent:[[String:String]]?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "FAQ Bea Cukai"
        setBackButton()
        view.backgroundBeaColor()
        self.tableView.register(CaraHitungCell.self, forCellReuseIdentifier: cellNameDetail)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension FAQViewController {
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch typeFAQ {
        case .titleFAQ:
            return viewModel.data.count
        case .detailFAQ:
            return 4
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch typeFAQ {
        case .titleFAQ:
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
            let data = viewModel.data[indexPath.row]["faq"]
            cell.selectionStyle = .none
            cell.textLabel?.font = UIFont(name: "SourceSansPro-Regular", size: 14.0)
            cell.textLabel?.text = data as? String
            cell.textLabel?.numberOfLines = 0
            cell.contentView.backgroundBeaColor()
            return cell
        case .detailFAQ:
            let cell = tableView.dequeueReusableCell(withIdentifier: cellNameDetail, for: indexPath) as! CaraHitungCell
//            let text = faqContent![indexPath.row]["a"]
//            cell.configContent(text!)
            cell.textLabel?.text = "assoo"
            return cell
        }

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = viewModel.data[indexPath.row]["content"]
        print(data!)
        guard typeFAQ == .titleFAQ else {
            return
        }
        goToDetailFAQ(data!)
    }
    
}

extension FAQViewController {
    
    @objc func goToDetailFAQ(_ data:Any) {
        
        let storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let detailFAQ = storyBoard.instantiateViewController(withIdentifier: "FAQViewController") as! FAQViewController
        detailFAQ.typeFAQ = .detailFAQ
        detailFAQ.faqContent = (data as! [[String : String]])
        self.navigationController?.pushViewController(detailFAQ, animated: true)
        
    }
    
}
