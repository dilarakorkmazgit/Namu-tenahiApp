
//
//  UserProfileView.swift
//  NamütenahiApp
//
//  Created by Dilara Korkmaz on 02/05/2017.
//  Copyright © 2017 Dilara Korkmaz. All rights reserved.
//

import UIKit
import Firebase

class MakeYourDesignView: UIViewController {

    
    @IBOutlet weak var productImage: UIImageView!
    //@IBOutlet weak var ProductImage: UIView!
    
    @IBOutlet weak var TableView: UITableView!
    
    @IBOutlet weak var ProductNameLabel: UILabel!


    let storage = FIRStorage.storage()
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        for number in 0...3{
    
           let reference = storage.reference(forURL: "gs://namutenahiapp.appspot.com/MUGS/mug \(number).jpg")
            reference.data(withMaxSize: 1*1024*1024){
                (data,error) -> Void in
                
                let picture = UIImage(data:data!)
                self.productImage.image=picture
            }
            
        }
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //current user info
               
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
