//
//  ViewController.swift
//  LocalNotificationDemo
//
//  Created by Apple on 22/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    var notificationCenter: UNUserNotificationCenter?
    var notificationAuthorisationState: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            self.notificationAuthorisationState = granted
            if granted {
                print("Authorised")
            }
            else {
                let alertVC = UIAlertController(title: "Local Nitification", message: "Authorise for local notification by going into settings", preferredStyle: .alert)
                alertVC.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
                self.present(alertVC, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func createNotification(_sender: UIButton) {
        
        if self.notificationAuthorisationState! {
            
            let content = UNMutableNotificationContent()
            content.title = "This is my local notification"
            content.body = "This is body of notification"
            content.sound = UNNotificationSound.default
            content.categoryIdentifier = "MEETING_INVITATION"

            var dateComponent = DateComponents()
            dateComponent.hour = 11
            dateComponent.minute = 14
            let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponent, repeats: false)
            
            let req = UNNotificationRequest(identifier: "myNotif", content: content, trigger: trigger)
            
            notificationCenter = UNUserNotificationCenter.current()
            notificationCenter?.delegate = self
            
            
            let acceptAction = UNNotificationAction(identifier: "ACCEPT_ACTION",
                  title: "Accept",
                  options: UNNotificationActionOptions(rawValue: 0))
            let declineAction = UNNotificationAction(identifier: "DECLINE_ACTION",
                  title: "Decline",
                  options: UNNotificationActionOptions(rawValue: 0))
            // Define the notification type
            let meetingInviteCategory =
                  UNNotificationCategory(identifier: "MEETING_INVITATION",
                  actions: [acceptAction, declineAction],
                  intentIdentifiers: [],
                  hiddenPreviewsBodyPlaceholder: "",
                  options: .customDismissAction)
            
            // Register the notification type.
            notificationCenter?.setNotificationCategories([meetingInviteCategory])

            notificationCenter?.add(req, withCompletionHandler: { (error) in
                if let er = error {
                    print(er.localizedDescription)
                }
            })
            
            print("Notification created!")
        }
        else {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { (granted, error) in
                self.notificationAuthorisationState = granted
                if granted {
                    print("Authorised")
                }
                else {
                    let alertVC = UIAlertController(title: "Local Nitification", message: "Authorise for local notification by going into settings", preferredStyle: .alert)
                    alertVC.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
                    self.present(alertVC, animated: true, completion: nil)
                }
            }
        }
    }
}

extension ViewController: UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        print("userNotificationCenter: didReceive")
        
        if response.actionIdentifier == "ACCEPT_ACTION" {
            print("ACCEPT_ACTION")
        }
        else {
            print("DECLINE_ACTION")
        }
        completionHandler()
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        let alert = UIAlertController(title: notification.request.content.title, message: notification.request.content.body, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        completionHandler(.sound)
    }
}
