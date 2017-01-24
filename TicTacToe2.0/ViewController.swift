//
//  ViewController.swift
//  TicTacToe2.0
//
//  Created by Thomas Prezioso on 1/12/17.
//  Copyright © 2017 Thomas Prezioso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let player1 = PlayerX().playersName
        
        print(player1)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

