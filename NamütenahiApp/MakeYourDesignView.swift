
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
    
    
    @IBOutlet weak var mugCell: MugTableViewCell!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //current user info
        
        
        
        
               
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
