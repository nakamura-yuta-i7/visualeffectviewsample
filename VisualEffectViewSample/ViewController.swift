//
//  ViewController.swift
//  VisualEffectViewSample
//
//  Created by 中村祐太 on 2015/09/15.
//  Copyright (c) 2015年 中村祐太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var containerBottomConstraint: NSLayoutConstraint!
    var containerShown = false;
    
    @IBAction func viewTouched(sender: AnyObject) {
        
        containerShown = !containerShown
        
        showContainerView(containerShown)
    }
    
    private func showContainerView(shown: Bool) {
        var newConstant: CGFloat
        if shown {
            newConstant = 0
        } else {
            newConstant = -containerView.bounds.height
        }
        UIView.animateWithDuration(0.3,
            animations: {
                self.containerBottomConstraint.constant = newConstant
                self.view.layoutIfNeeded()
            },
            completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showContainerView(containerShown)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

