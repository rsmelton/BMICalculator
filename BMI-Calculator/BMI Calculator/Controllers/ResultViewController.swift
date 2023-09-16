//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Scott Melton on 5/15/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundColor: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        // Could have also just used the view to
        // access the background color and change
        // it there like so: view.backgroundColor = color
        backgroundColor.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // You can do one of two ways below to get back to the CalculateViewController
        // 1. This perform segue essentially just takes the path back to the CalculateViewController
        //    and makes the view the user sees look like a stack of pancakes or stack of views.
        // self.performSegue(withIdentifier: "goToRecalculate", sender: self)
        
        // 2. This self.dismiss way basically just dismisses the current ViewController you
        //    are in and goes back to the completely original way the screen looked as if nothing changed which is probably preferred more times than not.
        self.dismiss(animated: true, completion: nil)
    }

}
