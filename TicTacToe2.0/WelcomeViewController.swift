//
//  WelcomeViewController.swift
//  TicTacToe2.0
//
//  Created by Thomas Prezioso on 2/2/17.
//  Copyright © 2017 Thomas Prezioso. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var terminalView: UITextView!

    @IBAction func twoPlayerButton(_ sender: Any) {
    
    }
    
    func setupTerminal() {
        let date = Date()
        let calendar = Calendar.current
        
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
        
        terminalView.text = "❤️ \(hour):\(minutes):\(seconds) "
    }
    
    @IBAction func hiddenTwoPointOButton(_ sender: Any) {
    // MARK: - Added secret View
        print("secret shhhhhh")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTerminal()
    }
}
