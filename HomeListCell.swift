//
//  HomeListCell.swift
//  CircleMe
//
//  Created by YANGReal on 14-12-22.
//  Copyright (c) 2014年 YANGReal. All rights reserved.
//

import UIKit

class HomeListCell: UITableViewCell {

    @IBOutlet var slider:UISlider!;
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = UITableViewCellSelectionStyle.None;
        
        
        var thumbImage = UIImage(named: "vec.png");
        slider.setThumbImage(thumbImage, forState: UIControlState.Normal);
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
