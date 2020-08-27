//
//  ViewController.swift
//  InstagramCloneApp
//
//  Created by Jonathan Shoemaker on 8/24/20.
//  Copyright © 2020 Jonathan Shoemaker. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()

    }

    private func handleNotAuthenticated() {
                //check auth status
        if Auth.auth().currentUser == nil {
        //show login
                let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
                present(loginVC, animated: false)
                }
    }


}

