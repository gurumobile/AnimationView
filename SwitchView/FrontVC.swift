//
//  FrontVC.swift
//  SwitchView
//
//  Created by Georgi on 1/6/17.
//  Copyright © 2017 georgi. All rights reserved.
//

import UIKit

class FrontVC: UIViewController {

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

    @IBAction func onSwitchBack(_ sender: UIButton) {
        let backVC = BackVC(nibName: "BackView", bundle: nil)
        
        UIView.beginAnimations("Flipview", context: nil)
        UIView.setAnimationDuration(2)
        UIView.setAnimationCurve(.easeInOut)
        UIView.setAnimationTransition(.flipFromLeft, for: self.view, cache: true)
        
        backVC.view.frame = self.view.bounds
        backVC.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.addViewController(backVC)
        
        UIView.commitAnimations()
    }
}

extension UIViewController {
    func addViewController(_ vc: UIViewController) {
        self.view.addSubview(vc.view)
        self.addChildViewController(vc)
        self.didMove(toParentViewController: self)
    }
    func removeFromViewController() {
        self.view.removeFromSuperview();
        self.willMove(toParentViewController: nil);
        self.removeFromParentViewController()
    }
}
