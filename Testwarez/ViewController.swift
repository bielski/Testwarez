//
//  ViewController.swift
//  Testwarez
//
//  Created by Ewa Ludwiczak on 04/11/2018.
//  Copyright © 2018 Ewa Ludwiczak. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    // MARK: - IBActions

    @IBAction func sayHello(_ sender: Any) {
        let alert = UIAlertController(title: "Welcome", message: "Nice to see you 😀" , preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "You too!", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func displayWebsite(_ sender: Any) {
        var url: URL!
        let currentDateString = getCurrentDateAsString()
        print("Current date is \(currentDateString)")

        if currentDateString == "14.11.2018" {
            url = URL(string: "https://www.testwarez.pl/agenda-day-one/")
        } else if currentDateString == "15.11.2018" {
            url = URL(string: "https://www.testwarez.pl/agenda-day-two/")
        } else {
            url = URL(string: "https://www.testwarez.pl/")
        }

        let safariVC: SFSafariViewController = SFSafariViewController(url: url)
        self.present(safariVC, animated: true, completion: nil)
    }

    // Private functions

    func getCurrentDateAsString() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"

        let result = formatter.string(from: date)
        return result
    }
}
