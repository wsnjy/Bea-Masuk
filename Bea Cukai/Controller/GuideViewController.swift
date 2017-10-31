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
        
        guard let number = URL(string: "tel://+628001003545") else { return }
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(number)
        }
    }
    
    func sendSms() {
        let number = "+6282130202045"
        if MFMessageComposeViewController.canSendText() {
            let controller = MFMessageComposeViewController()
            controller.body = "Message Body"
            controller.recipients = [number]
            controller.messageComposeDelegate = self
            self.present(controller, animated: true, completion: nil)
        }
    }
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setSubject("Pengaduan Bea Cukai")
            mail.setMessageBody("Dengan email saya ingin menyampaikan bahwa ", isHTML: true)
            mail.setToRecipients(["pengaduan.beacukai@customs.go.id, puski.beacukai@gmail.com"])
            present(mail, animated: true, completion: nil)
        }
    }
    
    func pengaduanTicketing() {
        UIApplication.shared.openURL(URL(string: "http://www.beacukai.go.id/pengaduan/rekam.html")!)
    }
    

    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    dismiss(animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true, completion: nil)
    }

    
}
