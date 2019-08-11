//
//  ViewController.swift
//  LoadingIndicator
//
//  Created by Kumar, Sumit on 07/08/19.
//  Copyright © 2019 sumitkr88. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showOnWindow(_ sender: Any) {
        LoadingIndicator.sharedInstance.showOnWindow(loadingIndicatorText: "Please wait...")
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
            LoadingIndicator.sharedInstance.hide()
        })
    }
    
    @IBAction func showOnController(_ sender: Any) {
        LoadingIndicator.sharedInstance.showOnController(presenter: self, loadingIndicatorText: "Loading")
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
            LoadingIndicator.sharedInstance.hide()
        })
    }
    @IBAction func showOnView(_ sender: Any) {
        LoadingIndicator.sharedInstance.showOnView(presenter: self.customView)
    }
    @IBAction func hide(_ sender: Any) {
        LoadingIndicator.sharedInstance.hide()
    }
}

