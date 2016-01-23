//
//  FirstController.swift
//  iPost
//
//  Created by Jonathan Velazquez on 23/01/16.
//  Copyright © 2016 Jonathan Velazquez. All rights reserved.
//

import UIKit

class CofigurationController: UIViewController, SWRevealViewControllerDelegate {

    
    @IBOutlet weak var menuButton: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().delegate = self
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        menuButton.addTarget(self.revealViewController(), action: "rightRevealToggle:", forControlEvents: .TouchUpInside)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
  


}











