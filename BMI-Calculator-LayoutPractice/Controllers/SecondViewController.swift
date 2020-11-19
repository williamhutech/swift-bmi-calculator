//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by William Hu on 26/8/2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        let label = UILabel()
        label.text = "Your BMI is \(bmiValue)"
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        view.addSubview(label)
    }
    
}
