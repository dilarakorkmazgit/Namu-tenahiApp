//
//  ViewController.swift
//  NamütenahiApp
//
//  Created by Dilara Korkmaz on 01/05/2017.
//  Copyright © 2017 Dilara Korkmaz. All rights reserved.
//

import UIKit
import FirebaseAuth


class ViewController: UIViewController {

    
    @IBOutlet weak var SignInViewSelector: UISegmentedControl!
    
    @IBOutlet weak var SignInLabel: UILabel!
    
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    @IBOutlet weak var SignInButton: UIButton!
    
    var isSignIn :Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // self.view.backgroundColor = UIColor(patternImage: UIImage(named: "backson.png")!)
       // EmailTextField.alpha = 0.2;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func SignInSelectorChanged(_ sender: UISegmentedControl) {
        
        //switch it
        isSignIn = !isSignIn
        
        if(isSignIn){
            
            SignInLabel.text = "Sign In";
            SignInButton.setTitle("Sign In", for: .normal)
        }
        else{
            
            SignInLabel.text = "Register";
            SignInButton.setTitle("Register", for: .normal)
            
        }
    }
    @IBAction func SignInButtonTapped(_ sender: UIButton) {
        
        if let email = EmailTextField.text, let pass = PasswordTextField.text{
            
            //sign in with firebase
            if(isSignIn){
                FIRAuth.auth()?.signIn(withEmail: email, password: pass, completion: { (user, error) in
                    //check the user is not nill
                    if let u = user {
                        //user is found
                       self.performSegue(withIdentifier: "gotoHome", sender: self)
                    }
                    else {
                        
                    }
                })
            }
                //Register with firebase
            else{
                
                //error and show message
                FIRAuth.auth()?.createUser(withEmail: email, password: pass, completion: { (user, error) in
                    //check the user is not nill
                    if let u = user {
                        //user is found
                         self.performSegue(withIdentifier: "gotoHome", sender: self)
                    }
                    else {
                    }
            })
          }
        }
     }
  }
