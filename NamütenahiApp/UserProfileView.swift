//
//  UserProfileView.swift
//  NamütenahiApp
//
//  Created by Dilara Korkmaz on 02/05/2017.
//  Copyright © 2017 Dilara Korkmaz. All rights reserved.
//

import UIKit
import Firebase

class UserProfileView: UIViewController {
    
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var userNameShowingLabel: UILabel!
    
    @IBOutlet weak var TopView: UIButton!
    
    @IBOutlet weak var YourDesignButton: UIButton!
    
    
    @IBOutlet weak var OurDesignButton: UIButton!
    
    
    //create image array for top scrollview
    var ScrollViewImagesArray = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //current user info
        
        ScrollView.frame = view.frame;
        let user = FIRAuth.auth()?.currentUser
        if let user = user {
            // The user's ID, unique to the Firebase project.
            // Do NOT use this value to authenticate with your backend server,
            // if you have one. Use getTokenWithCompletion:completion: instead.
           
            //set label text to profile email
            let email = user.email
           // let uid = user.uid
            userNameShowingLabel.text = email
            }
        
        ScrollViewImagesArray = [#imageLiteral(resourceName: "backson"),#imageLiteral(resourceName: "backson"),#imageLiteral(resourceName: "backson"),#imageLiteral(resourceName: "backson")]
        
        //adding these view into scrollview
        for i in 0..<ScrollViewImagesArray.count{
        
            let imageViews = UIImageView()
            imageViews.image = ScrollViewImagesArray[i]
            imageViews.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i);
            imageViews.frame = CGRect(x: xPosition ,y: 0 ,width: self.ScrollView.frame.width ,height: self.ScrollView.frame.height )
            ScrollView.contentSize.width = ScrollView.frame.width * CGFloat(i + 1);
            ScrollView.addSubview(imageViews)
        }
        
        
        
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
