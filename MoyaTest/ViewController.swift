//
//  ViewController.swift
//  MoyaTest
//
//  Created by Aswathy Bose on 26/08/20.
//  Copyright © 2020 Aswathy Bose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LoginPresenter.sharedInstance.setUpLogin()
    }


}

