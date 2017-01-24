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
    @IBOutlet var playerlabel: UILabel!
    
    var whichTurnIsIt = true

    @IBAction func button1(_ sender: Any) {
        label1.text = turnBase()
    }
    @IBAction func button2(_ sender: Any) {
        label2.text = turnBase()
    }
    @IBAction func button3(_ sender: Any) {
        label3.text = turnBase()
    }
    @IBAction func button4(_ sender: Any) {
        label4.text = turnBase()
    }
    @IBAction func button5(_ sender: Any) {
        label5.text = turnBase()
    }

    @IBAction func button6(_ sender: Any) {
        label6.text = turnBase()
    }
    @IBAction func button7(_ sender: Any) {
        label7.text = turnBase()
    }
    @IBAction func button8(_ sender: Any) {
        label8.text = turnBase()
    }
    @IBAction func button9(_ sender: Any) {
        label9.text = turnBase()
    }

    func turnBase() -> String {
        if UserDefaults.standard.bool(forKey: "yes") {
            UserDefaults.standard.set(false, forKey: "yes")
           playerlabel.text = PlayerO().playersName
            return PlayerX().playersMark
        }
        playerlabel.text = PlayerX().playersName
        UserDefaults.standard.set(true, forKey: "yes")
        return PlayerO().playersMark
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         UserDefaults.standard.set(true, forKey: "yes")
        print(whichTurnIsIt)
    }
}

