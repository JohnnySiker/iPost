//
//  NewsFeedGlobalController.swift
//  iPost
//
//  Created by Jonathan Velazquez on 23/01/16.
//  Copyright © 2016 Jonathan Velazquez. All rights reserved.
//

import UIKit

class NewsFeedGlobalController: UIViewController, SWRevealViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        
        self.revealViewController().delegate = self
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    


}
