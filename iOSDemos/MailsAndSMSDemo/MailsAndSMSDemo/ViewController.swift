//
//  ViewController.swift
//  MailsAndSMSDemo
//
//  Created by Apple on 19/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate {

    var mailController: MFMailComposeViewController?
    var msgController: MFMessageComposeViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func mailButtonCLicked(_ sender: UIButton) {
        mailController = MFMailComposeViewController()
        mailController?.mailComposeDelegate = self
        
        mailController?.setToRecipients(["varun@codekul.com", "varun@melayer.com"])
        mailController?.setCcRecipients(["varunkudalkar@gmail.com"])
        mailController?.setSubject("This is my subject")
        mailController?.setMessageBody("This is my message body", isHTML: false)
        
        if MFMailComposeViewController.canSendMail() {
            self.present(mailController!, animated: true, completion: nil)
        }
        else {
            print("mail app is not present")
        }
    }
    
    @IBAction func msgButtonCLicked(_ sender: UIButton) {
        if MFMessageComposeViewController.canSendText() {
            msgController = MFMessageComposeViewController()
            msgController?.recipients = ["7588364088", "1234567890"]
            msgController?.body = "This is my message"
            msgController?.messageComposeDelegate = self
            self.present(msgController!, animated: true, completion: nil)
        }
        else {
            print("message app is not present")
        }

    }

    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        if result == .sent {
            print("Message sent")
        }
        else if result == .cancelled {
            print("Messahe cancelled")
        }
        else if result == .failed {
            print("Message failed")
        }
    }
}

