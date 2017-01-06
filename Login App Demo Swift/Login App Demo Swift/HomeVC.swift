//
//  HomeVC.swift
//  Login App Demo Swift
//
//  Created by pc on 1/6/17.
//  Copyright © 2017 Bhadresh. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnLogOut(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(nil, forKey: "txtUserName")
        defaults.set(nil, forKey: "txtUserPassword")
        defaults.synchronize();
        
//        dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: {});

        

    }

}
