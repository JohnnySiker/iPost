//
//  MenuController.swift
//  iPost
//
//  Created by Jonathan Velazquez on 23/01/16.
//  Copyright © 2016 Jonathan Velazquez. All rights reserved.
//

import UIKit

class MenuController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func logout(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
