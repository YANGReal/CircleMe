//
//  HomeViewController.swift
//  CircleMe
//
//  Created by YANGReal on 14-12-20.
//  Copyright (c) 2014年 YANGReal. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView:UITableView!
    @IBOutlet weak var friendsButton: UIButton!
    @IBOutlet weak var hotButton: UIButton!
    let pinkColor:UIColor = UIColor(red: 255/255.0, green: 115/255.0, blue: 114/255.0, alpha: 1);
    let whiteColor:UIColor = UIColor.whiteColor();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "什么仇"
        self.navigationController?.navigationBarHidden = false;
        let identifier:String = "cell"
        
        
        //tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: identifier);
        var nibName = UINib(nibName: "HomeListCell", bundle: nil);
        tableView.registerNib(nibName, forCellReuseIdentifier: identifier);
        
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action:nil);
        // Do any additional setup after loading the view.
        self.automaticallyAdjustsScrollViewInsets = false;
        
        friendsButton.backgroundColor = pinkColor
        hotButton.backgroundColor = whiteColor;
        
    
    }

    
    @IBAction func friendsButtonClicked(sender: AnyObject)
    {
        friendsButton.backgroundColor = pinkColor;
        hotButton.backgroundColor = whiteColor;
        friendsButton.setTitleColor(whiteColor, forState: UIControlState.Normal);
        hotButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal);
    }
    @IBAction func hotButtonClicked(sender: AnyObject)
    {
        friendsButton.backgroundColor = UIColor.whiteColor();
        hotButton.backgroundColor = pinkColor;
        friendsButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal);
        hotButton.setTitleColor(whiteColor, forState: UIControlState.Normal);

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    
   func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifier:String = "cell";
    
        var cell:HomeListCell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as HomeListCell;
        //cell.textLabel.text = "这是第\(indexPath.row+1)个单元格"
        return cell;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        var height = self.view.frame.size.height-30;
        return height;
        
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
