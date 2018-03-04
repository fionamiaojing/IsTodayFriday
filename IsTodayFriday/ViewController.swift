//
//  ViewController.swift
//  IsTodayFriday
//
//  Created by Fiona Miao on 2/26/18.
//  Copyright © 2018 Fiona Miao. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController {
    
    //MARK: Property
    @IBOutlet weak var OutputLabel: UILabel!
    @IBOutlet weak var OutputImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if testTodayisFriday() {
            OutputLabel.text = "YEEEEEEEES!!!"
            OutputLabel.textColor = UIColor .red
            OutputImage.image = UIImage(named: "YesImage")
        }
        else {
            OutputLabel.text = "Nooooooooope"
            OutputLabel.textColor = UIColor .orange
            OutputImage.image = UIImage(named: "NoImage")

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: function
    
    func testTodayisFriday() -> Bool {
        let myDate = NSDate()
        let weekday = Calendar.current.component(.weekday, from: myDate as Date)
        if weekday == 6 {
            return true
        }
        else {
            return false
        }
    }

    
}

