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
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    var index = -1 // 最初だけ−1から開始
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!

    @IBAction func startStopSlideshow(_ sender: Any) {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(showNextImage), userInfo:nil, repeats: true)
            button.setTitle("⏸", for: .normal)
            nextButton.isEnabled = false
            previousButton.isEnabled = false
        } else{
            timer.invalidate()
            timer = nil
            button.setTitle("▶", for: .normal)
            nextButton.isEnabled = true
            previousButton.isEnabled = true
        }
    }
    
    @IBAction func showNextImage(_ sender: Any) {
        index = (index + 1) % thumbImages.count
        let img = UIImage(named: thumbImages[index])
        image.image = img
    }

    @IBAction func showPreviousImage(_ sender: Any) {
        index = (index - 1 + thumbImages.count) % thumbImages.count
        let img = UIImage(named: thumbImages[index])
        image.image = img
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let imageViewController = segue.destination as! ImageViewController
        imageViewController.currentImageIndex = index
        if timer != nil {
            timer.invalidate()
            timer = nil
            button.setTitle("▶", for: .normal)
            nextButton.isEnabled = true
            previousButton.isEnabled = true
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        // ?
    }
}

