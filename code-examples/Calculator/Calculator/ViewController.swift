//
//  ViewController.swift
//  Calculator
//
//  Created by Yvette Cook on 02/03/2016.
//  Copyright © 2016 Yvette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!

    var userIsInTheMiddleOfTypingANumber = false

    @IBAction func appendDigit(sender: UIButton) {
        guard let digit = sender.currentTitle else { return }
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }

}

