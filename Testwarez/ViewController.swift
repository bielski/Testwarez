//
//  ViewController.swift
//  Testwarez
//
//  Created by Ewa Ludwiczak on 04/11/2018.
//  Copyright © 2018 Ewa Ludwiczak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillLayoutSubviews() {
        displayButtonTitleForTraitCollection()
    }

    // MARK: - Size classes
    func displayButtonTitleForTraitCollection() {
        print("Print horizontalSizeClass \(traitCollection.horizontalSizeClass)")
        if traitCollection.horizontalSizeClass == .regular {
            button.titleLabel?.text = "Hello Testwarez"
        } else if traitCollection.horizontalSizeClass == .compact {
            button.titleLabel?.text = "Hello Testwarez 📱"
        }
    }

    // MARK: - IBActions
    @IBAction func buttonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Welcome", message: "Nice to see you 👋" , preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "You too!", style: UIAlertAction.Style.default, handler: nil))
        //self.present(alert, animated: true, completion: nil)
    }
}

