//
//  ViewController.swift
//  AutoLayoutExample7
//
//  Created by Luu Tien Thanh on 6/27/16.
//  Copyright © 2016 Thanh Luu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let orangeView = UIView()
    let blueView = UIView()
    let purpleView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        orangeView.backgroundColor = UIColor(red: 255/255.0, green: 148/255.0, blue: 0.0, alpha: 1.0)
        blueView.backgroundColor = UIColor(red: 187/255.0, green: 44/255.0, blue: 162/255.0, alpha: 1.0)
        purpleView.backgroundColor = UIColor(red: 122/255.0, green: 206/255.0, blue: 255/255.0, alpha: 1.0)
        
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(orangeView)
        view.addSubview(blueView)
        view.addSubview(purpleView)
        
        let views: [String: AnyObject] = [
            "orangeView": orangeView,
            "blueView": blueView,
            "purpleView": purpleView,
            "topLayoutGuide": self.topLayoutGuide
        ]
        
        let metrics: [String: AnyObject] = [
            "orangeViewWidth": 200,
            "orangeViewHeight": 57,
            "standardOffset": 8,
            "bottomSpaceOffset": 50
        ]
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[orangeView(orangeViewWidth)]", options: [], metrics: metrics, views: views))
        orangeView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-standardOffset-[purpleView]-standardOffset-[orangeView(orangeViewHeight)]-bottomSpaceOffset-|", options: [], metrics: metrics, views: views))
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-standardOffset-[blueView]-standardOffset-[orangeView(orangeViewHeight)]-bottomSpaceOffset-|", options: [], metrics: metrics, views: views))
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-standardOffset-[purpleView(==blueView)]-standardOffset-[blueView]-standardOffset-|", options: [], metrics: metrics, views: views))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

