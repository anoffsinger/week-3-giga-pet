//
//  LoginViewController.swift
//  BunnyBunny
//
//  Created by Adam Noffsinger on 10/18/16.
//  Copyright © 2016 Adam Noffsinger. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapLogin(_ sender: AnyObject) {
        // do login stuff
        activityIndicator.startAnimating()
        if emailField.text == "kingsley" && passwordField.text == "dog" {
            delay(3, closure: {
                self.activityIndicator.stopAnimating()
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            })
            
        } else {
            delay(4, closure: {
                self.activityIndicator.stopAnimating()
                
                let alertController = UIAlertController(title: "bad credentials", message: "did you forget your password?", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "ok", style: .default, handler: { (action: UIAlertAction) in
                })
                
                alertController.addAction(okAction)
                self.present(alertController, animated: true, completion: nil)
                
            })
        }
    }
}
