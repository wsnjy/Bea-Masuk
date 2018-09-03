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
        setBackButton()
        view.backgroundBeaColor()
        configFAQ()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "FAQ Bea Cukai"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func configFAQ() {
        tableView.register(UINib(nibName: cellNameDetail, bundle: nil), forCellReuseIdentifier: cellNameDetail)
        tableView.estimatedRowHeight = 100.0
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.tableFooterView = UIView()
    }
    
}

extension FAQViewController {
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        switch typeFAQ {
        case .titleFAQ:
            return 1
        case .detailFAQ:
            return (faqContent?.count)!
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch typeFAQ {
        case .titleFAQ:
            return viewModel.data.count
        case .detailFAQ:
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        guard typeFAQ == .detailFAQ else {
            return ""
        }

        return faqContent![section]["q"]
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        //Create label and autoresize it
        let headerLabel = UILabel(frame: CGRect(x: 30, y: 5, width: tableView.frame.width - 30, height: 2000))
        headerLabel.font = UIFont(name: "SourceSansPro-Medium", size: 13)
        headerLabel.text = self.tableView(self.tableView, titleForHeaderInSection: section)
        headerLabel.numberOfLines = 0
        headerLabel.sizeToFit()
        
        //Adding Label to existing headerView
        let headerView = UIView()
        headerView.addSubview(headerLabel)
        
        return headerView
    }
    
    

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        guard typeFAQ == .detailFAQ else {
            return 0.01
        }
        return UITableViewAutomaticDimension;
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
            let text = faqContent![indexPath.section]["a"]
            cell.configContent(text!)
            cell.selectionStyle = .none
            return cell
        }

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = viewModel.data[indexPath.row]["content"]
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
