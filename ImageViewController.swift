//
//  ImageViewController.swift
//  SlideshowApp
//
//  Created by 	 on 01/09月.
//  Copyright © 2017年 critical-bug. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var currentImageIndex: Int = 0
    let images = ["de488dc5.gif",
                  "19cde0ad.gif",
                  "20be2a48.gif",
                  "36fa3c25.gif",
                  "01b6cb78.gif",
                  "7ff4dbe2.gif",
                  "ef60f98b.gif",
                  "c7366e5b.gif",
                  "fda6210c.gif",
                  "f0134f93.gif"]

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: images[currentImageIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
