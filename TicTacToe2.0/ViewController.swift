//
//  ViewController.swift
//  TicTacToe2.0
//
//  Created by Thomas Prezioso on 1/12/17.
//  Copyright © 2017 Thomas Prezioso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    @IBOutlet var label8: UILabel!
    @IBOutlet var label9: UILabel!

    @IBAction func actionButton(_ sender: Any) {
        label1.text = PlayerO().playersMark
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let player1 = PlayerX().playersName
        print(player1)
    }
}

