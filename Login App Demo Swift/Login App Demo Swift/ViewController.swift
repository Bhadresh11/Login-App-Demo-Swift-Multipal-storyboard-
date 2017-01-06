//
//  ViewController.swift
//  Login App Demo Swift
//
//  Created by pc on 1/6/17.
//  Copyright © 2017 Bhadresh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet var txtUserName: UITextField!
    @IBOutlet var txtUserPassword: UITextField!

    @IBAction func btnLogin(_ sender: Any) {
        if (txtUserName.text?.characters.count)! > 2 && (txtUserPassword.text?.characters.count)! > 2
        {
            let storyboard = UIStoryboard(name: "DashBoard", bundle: nil)
            let vc = storyboard.instantiateInitialViewController()
            present(vc!, animated: true, completion: nil)
            
            
            
            let defaults = UserDefaults.standard
            defaults.set(txtUserName.text, forKey: "txtUserName")
            defaults.set(txtUserPassword.text, forKey: "txtUserPassword")
            defaults.synchronize();
        }
        else{
            
            
            let alert = UIAlertController(title: "Alert", message: "User Name & Password > 2 character", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
}

