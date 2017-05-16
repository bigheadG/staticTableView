//
//  ViewController.swift
//  staticTableView
//
//  Created by chenBighead on 2017/5/15.
//  Copyright © 2017年 joybien. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet weak var sliderA: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var enableSwitch: UISwitch!
    
    @IBAction func sliderAudioVC(_ sender: UISlider) {
    
        let currentValue = Int(sender.value)
        sliderLabel.text = "\(currentValue)"
        
        
    }
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func switchVC(_ sender: UISwitch) {
        sliderA.isEnabled = (enableSwitch.isOn) ? true : false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderLabel.text = "\(Int(sliderA.value))"
        sliderA.isEnabled = (enableSwitch.isOn) ? true : false
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

