//
//  MainTabBarViewController.swift
//  CircleMe
//
//  Created by YANGReal on 14-12-24.
//  Copyright (c) 2014年 YANGReal. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    var myTabBar:UIView!
    var homeButton:UIButton!
    var cameraButton:UIButton!
    var profileButton:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.hidden = true;
        
        var rect = CGRectMake(0, self.view.frame.size.height-49, self.view.frame.size.width, 49);
        myTabBar = UIView(frame: rect);
        myTabBar.backgroundColor = UIColor.whiteColor();
        self.view.addSubview(myTabBar);
        
        
        homeButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton;
        //homeButton.setTitle("", forState: UIControlState.Normal);
        homeButton.frame = CGRectMake(50, 10, 30, 30);
        homeButton.setImage(UIImage(named: "home.png"), forState: UIControlState.Normal);
        //home_highlighted
        homeButton.addTarget(self, action: "homeButtonClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        homeButton.setImage(UIImage(named: "home_highlighted.png"), forState: UIControlState.Selected);
        homeButton.selected = true;
        myTabBar.addSubview(homeButton);
        
        cameraButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton;
        //homeButton.setTitle("", forState: UIControlState.Normal);
        
        var x = (self.view.frame.size.width-40)/2.0
        cameraButton.frame = CGRectMake(x, 10, 40, 30);
        cameraButton.setImage(UIImage(named: "cam_pink.png"), forState: UIControlState.Normal);
        cameraButton.addTarget(self, action: "choosePicture:", forControlEvents: UIControlEvents.TouchUpInside);
        //home_highlighted
        //cameraButton.setImage(UIImage(named: ""), forState: UIControlState.Highlighted);
        myTabBar.addSubview(cameraButton);
        
        profileButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton;
        //homeButton.setTitle("", forState: UIControlState.Normal);
        profileButton.frame = CGRectMake(self.view.frame.size.width-50-30, 10, 30, 30);
        profileButton.setImage(UIImage(named: "profile.png"), forState: UIControlState.Normal);
        //home_highlighted
        profileButton.addTarget(self, action: "profileButtonClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        profileButton.setImage(UIImage(named: "profile_highlighted.png"), forState: UIControlState.Selected);
        myTabBar.addSubview(profileButton);
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func homeButtonClicked(sender:UIButton)
    {
        //homeButton.selected = !profileButton.selected;
        homeButton.selected = true;
        profileButton.selected = false;
        self.selectedIndex = 0;
       
    }
    
    func choosePicture(sender:UIButton)
    {
        
    }
    
    func profileButtonClicked(sender:UIButton)
    {
       // profileButton.selected = !homeButton.selected;
        homeButton.selected = false;
        profileButton.selected = true;
        self.selectedIndex = 1;
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
