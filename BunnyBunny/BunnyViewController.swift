//
//  BunnyViewController.swift
//  BunnyBunny
//
//  Created by Adam Noffsinger on 10/18/16.
//  Copyright © 2016 Adam Noffsinger. All rights reserved.
//

import UIKit

class BunnyViewController: UIViewController {

    
    @IBOutlet weak var bunnyImageView: UIImageView!
    @IBOutlet weak var responseField: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    //not cg float
    var initialOrigin:CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialOrigin = bunnyImageView.center
        responseField.text = "Murda murda murda"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func didPressSend(_ sender: AnyObject) {
        responseField.text = ""
        activityIndicator.startAnimating()
        if inputField.text == "hello" {
            
            delay(1.0, closure: {
                self.responseField.text = "nah"
                self.activityIndicator.stopAnimating()
            })
            
        } else if inputField.text == "what is your name" {
            responseField.text = "ef off m8"
        } else if inputField.text == "bye" {
            responseField.text = "fook"
        } else {
            responseField.text = "chet ep"}
        
        inputField.text = ""
    }
    
    
    
    @IBAction func didPressRight(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3) { 
            self.bunnyImageView.center.x = self.bunnyImageView.center.x + 20
        }
    }
    
    
    @IBAction func didPressDown(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3) {
            self.bunnyImageView.center.y = self.bunnyImageView.center.y + 20
            
        }

    }
    
    
    @IBAction func didPressUp(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) { 
            self.bunnyImageView.center.y = self.bunnyImageView.center.y - 20

        }
    }
    
    @IBAction func didPressShrink(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3) {
            self.bunnyImageView.transform = self.bunnyImageView.transform.scaledBy(x: 0.8, y: 0.8)
        }
    }
    
    
    
    @IBAction func didPressGrow(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3) { 
            self.bunnyImageView.transform = self.bunnyImageView.transform.scaledBy(x: 2, y: 2)
        }
    }

    @IBAction func didPressRotateLeft(_ sender: AnyObject) {
        bunnyImageView.transform = bunnyImageView.transform.rotated(by: CGFloat(-20 * M_PI / 180))
    }
    

    @IBAction func didPressReset(_ sender: AnyObject) {
        bunnyImageView.center = initialOrigin
        
        UIView.animate(withDuration: 0.6) { 
            self.bunnyImageView.transform = CGAffineTransform.identity
        }

    }
    
    
    
    
}
