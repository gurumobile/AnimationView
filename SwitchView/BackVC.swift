//
//  BackVC.swift
//  SwitchView
//
//  Created by Georgi on 1/6/17.
//  Copyright © 2017 georgi. All rights reserved.
//

import UIKit

class BackVC: UIViewController {

    @IBOutlet weak var switchBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        switchBtn.layer.cornerRadius = 5.0
    }
    
    @IBAction func onSwitch(_ sender: Any) {
        UIView.beginAnimations("flipview", context: nil)
        UIView.setAnimationDuration(1)
        UIView.setAnimationCurve(.easeInOut)
        UIView.setAnimationTransition(.curlUp, for: self.view.superview!, cache: true)
        
        self.view.removeFromSuperview()
        
        UIView.commitAnimations()
    }
}
