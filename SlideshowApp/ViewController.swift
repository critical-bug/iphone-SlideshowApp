//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 	 on 01/09月.
//  Copyright © 2017年 critical-bug. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    let thumbImages = ["de488dc5-s.gif",
        "19cde0ad-s.gif",
        "20be2a48-s.gif",
        "36fa3c25-s.gif",
        "01b6cb78-s.gif",
        "7ff4dbe2-s.gif",
        "ef60f98b-s.gif",
        "c7366e5b-s.gif",
        "fda6210c-s.gif",
        "f0134f93-s.gif"]

    var timer: Timer!

    @IBAction func startStopSlideshow(_ sender: Any) {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(showNextImage), userInfo:nil, repeats: true)
        } else{
            timer.invalidate()
            timer = nil
        }
    }
    
    func showNextImage() {
        
    }
}

