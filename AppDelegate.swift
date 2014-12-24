//
//  AppDelegate.swift
//  CircleMe
//
//  Created by YANGReal on 14-12-19.
//  Copyright (c) 2014年 YANGReal. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var loginViewController:LoginViewController!
    var homeViewController:HomeViewController!;
    var mainTabBarController:MainTabBarViewController!
    var profileViewController:ProfileViewController!

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        var screenFrame = UIScreen.mainScreen().bounds;
        window = UIWindow(frame: screenFrame);
       // window?.backgroundColor = UIColor.redColor();
        
        window?.makeKeyAndVisible();
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 255/255.0, green: 115/255.0, blue: 114/255.0, alpha: 1);
        
        var loginned:Bool = NSUserDefaults.standardUserDefaults().boolForKey("userDidLogin");
        if (loginned)
        {
            
            mainTabBarController = MainTabBarViewController();
            
            profileViewController = ProfileViewController(nibName: "ProfileViewController", bundle: nil);
            var nav2 = UINavigationController(rootViewController: profileViewController);
            
            homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil);
            var nav1 = UINavigationController(rootViewController: homeViewController);
            
            mainTabBarController.viewControllers = [nav1,nav2];
            window?.rootViewController = mainTabBarController;

        }
        else
        {
            loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil);
            
            var nav = UINavigationController(rootViewController: loginViewController);
            window?.rootViewController = nav;
        }
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

