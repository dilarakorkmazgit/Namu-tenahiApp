
//
//  UserProfileView.swift
//  NamütenahiApp
//
//  Created by Dilara Korkmaz on 02/05/2017.
//  Copyright © 2017 Dilara Korkmaz. All rights reserved.
//

import UIKit
import Firebase



class MakeYourDesignView: UIViewController{

    let storage = FIRStorage.storage()
    @IBOutlet weak var mugCell: MugTableViewCell!
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //current user info
        
        
        
               
    }
    
    override func viewDidAppear(_ animated: Bool) {
    for number in 0...3{
            
            let reference = storage.reference(forURL: "gs://namutenahiapp.appspot.com/MUGS/mug \(number).jpg")
            reference.data(withMaxSize: 1*1024*1024){
                (data,error) -> Void in
                
                let picture = UIImage(data:data!)
                self.mugCell.mugImage.image=picture
            }
            
        }
    }
    
    func numberOfSectionsInTableView(in tableView : UITableView)-> Int{
return 1
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
    mugCell = tableView.dequeueReusableCell(withIdentifier: "mug") as! MugTableViewCell
    
        
        
       return mugCell
}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
