//
//  ContainerViewController.swift
//  VisualEffectViewSample
//
//  Created by 中村祐太 on 2015/09/15.
//  Copyright (c) 2015年 中村祐太. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBAction func segmentChanged(sender: UISegmentedControl) {
        let parentController: ViewController = self.parentViewController as! ViewController
        println(sender.selectedSegmentIndex)
        parentController.myImageView.contentMode = UIViewContentMode(rawValue: sender.selectedSegmentIndex)!
    }
}
