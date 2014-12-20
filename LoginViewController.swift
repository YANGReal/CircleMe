//
//  LoginViewController.swift
//  CircleMe
//
//  Created by YANGReal on 14-12-19.
//  Copyright (c) 2014年 YANGReal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var circleView:UIView!
    @IBOutlet var loginButton:UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        circleView.layer.cornerRadius = 100;
        circleView.layer.masksToBounds = true;
        circleView.layer.borderColor = UIColor.whiteColor().CGColor;
        circleView.layer.borderWidth = 2.0;
        circleView.backgroundColor = UIColor.clearColor();
        // Do any additional setup after loading the view.
        loginButton.layer.borderColor = UIColor.whiteColor().CGColor;
        loginButton.layer.borderWidth = 2.0;
    }
    
    override func viewWillAppear(animated: Bool)
   {
        super.viewWillAppear(animated);
      self.navigationController?.navigationBarHidden = true;
    
    }
    
    
    @IBAction func loginButtonClicked(sender: AnyObject)
    {
        println("123");
        
        var homeVC = HomeViewController(nibName:"HomeViewController",bundle:nil);
       // self.presentViewController(homeVC, animated: true, completion: nil);
        self.navigationController?.pushViewController(homeVC, animated: true);
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
