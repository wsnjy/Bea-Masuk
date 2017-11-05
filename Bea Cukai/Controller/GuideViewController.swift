//
//  GuideViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/22/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit
import MessageUI

enum GuideType{
    case developer
    case rumus
    case pengaduan
}

class GuideViewController: UIViewController, BottomBackground, PengaduanDelegate, MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate {

    var guide:GuideType = .developer
    var viewModel:GuideViewModel!
    
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
        
        viewModel = GuideViewModel.init(type: type)
        
        title = viewModel.titles()
        
        let nib = UINib(nibName: viewModel.nibName(), bundle: nil)
        
        if type == .pengaduan {
            showPengaduan(nib: nib)
        }else{
            let dev = nib.instantiate(withOwner: self, options: nil).first as! UIView
            view.addSubview(dev)
            
            
            dev.translatesAutoresizingMaskIntoConstraints = false
            dev.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            dev.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            dev.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            dev.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

            let multipier = Float(view.frame.size.height) * (2.4/3)
            dev.heightAnchor.constraint(equalToConstant: CGFloat(multipier)).isActive = true
        }
    }
    
    func showPengaduan(nib:UINib) {
        
        let dev = nib.instantiate(withOwner: self, options: nil).first as! Pengaduan
        dev.delegate = self
        dev.setShadowForView()
        view.addSubview(dev)
        
        dev.translatesAutoresizingMaskIntoConstraints = false
        dev.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        dev.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        dev.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        let multipier = Float(view.frame.size.height) * (2.4/3)
        dev.heightAnchor.constraint(equalToConstant: CGFloat(multipier)).isActive = true
        
    }
    
}

extension GuideViewController {
    
    func pengaduanAction(_ type: pengaduanCase) {

        switch type {
        case .pengaduanTelepon:
            makeAPhoneCall()
        case .pengaduanSms:
            sendSms()
        case .pengaduanEmail:
            sendEmail()
        case .pengaduanTicketing:
            pengaduanTicketing()
        }
    }

    func makeAPhoneCall()  {
        
        guard let number = URL(string:viewModel.telpNumber) else { return }
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(number)
        }else{
            print("can't send anything")
        }
    }
    
    func sendSms() {

        if MFMessageComposeViewController.canSendText() {
            let controller = MFMessageComposeViewController()
            controller.body = viewModel.templateSMS
            controller.recipients = [viewModel.number]
            controller.messageComposeDelegate = self
            self.present(controller, animated: true, completion: nil)
        }else{
            print("can't send anything")
        }
    }
    
    func sendEmail() {

        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setSubject(viewModel.subjectEmail)
            mail.setMessageBody(viewModel.templateEmail, isHTML: true)
            mail.setToRecipients([viewModel.emailAddress])
            present(mail, animated: true, completion: nil)
        }else{
            print("can't send anything")
        }
    }
    
    func pengaduanTicketing() {
        UIApplication.shared.openURL(URL(string: viewModel.urlPengaduan)!)
    }
    

    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        dismiss(animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true, completion: nil)
    }

    
}

