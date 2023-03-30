//
//  SecondViewController .swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Perizat Omar on 30.03.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//


import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50) //rectangle pozition
        view.addSubview(label)
        
    }
}
