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
            "orangeView": orangeView
        ]
        
        let metrics: [String: AnyObject] = [
            "orangeViewWidth": 200
        ]
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[orangeView(orangeViewWidth)]", options: [], metrics: metrics, views: views))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

