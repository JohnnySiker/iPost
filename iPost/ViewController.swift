//
//  ViewController.swift
//  iPost
//
//  Created by Jonathan Velazquez on 22/01/16.
//  Copyright © 2016 Jonathan Velazquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: MaterialTextField!
    @IBOutlet weak var passTextField: MaterialTextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGestures()
        addKeyboardObserver()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func addKeyboardObserver(){
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide", name: UIKeyboardDidHideNotification, object: nil)
        
        
    }
    
    func keyboardWillShow(notification: NSNotification){
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
            
            self.view.frame.origin.y = -keyboardSize.height*0.8
            
        }
        //self.view.setNeedsLayout()
        
    }
    
    func keyboardWillHide(){
        self.view.frame.origin.y = 0
    }
    
    

    
    func addGestures(){
        let tap = UITapGestureRecognizer(target: self, action: "hideKeyboard")
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        
        self.view.addGestureRecognizer(tap)
        
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: "hideKeyboard")
        swipeDown.numberOfTouchesRequired = 1
        swipeDown.direction = .Down
        
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: "showKeyboard")
        swipeUp.numberOfTouchesRequired = 1
        swipeUp.direction = .Up
        
        self.view.addGestureRecognizer(swipeUp)
        
        
        
        
        
    }
    
    func hideKeyboard(){
        userTextField.resignFirstResponder()
        passTextField.resignFirstResponder()
    }
    
    func showKeyboard(){
        userTextField.becomeFirstResponder()
    }
    
    
    
    @IBAction func login(sender: BorderedButton) {
        
        passTextField.animation = "shake"
        passTextField.delay = 0
        passTextField.animate()
        
    }
    
    
    

}

