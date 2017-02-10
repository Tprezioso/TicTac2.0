//
//  WelcomeViewController.swift
//  TicTacToe2.0
//
//  Created by Thomas Prezioso on 2/2/17.
//  Copyright © 2017 Thomas Prezioso. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UITextViewDelegate {
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var terminalView: UITextView!
    @IBAction func twoPlayerButton(_ sender: Any) {
    
    }
    
    func setupTerminal() -> String {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
        return "❤️ \(hour):\(minutes):\(seconds) "
    }
    
    @IBAction func hiddenTwoPointOButton(_ sender: Any) {
    // MARK: - Added secret View
        print("secret shhhhhh")
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (text == "\n") {
            var userText = " "
            userText = String(terminalView.text.characters.suffix(2))
            
            print("\(userText) >>>>>>>>>>")
            switch userText {
            case "cd":
                print("change directory")
            case "ls":
                print("list directory")
            default:
                print ("Not valid input")
            }
            UserDefaults.standard.set(terminalView.text!, forKey: "terminalText")
            let terminalStuff = "\(UserDefaults.standard.value(forKey: "terminalText")!)\n\(setupTerminal())"
            terminalView.text = terminalStuff

            dissmissKeyboard()
            return false
        }
        return true
    }
    
    func dissmissKeyboard() {
        terminalView.resignFirstResponder()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.terminalView.delegate = self
       terminalView.text = setupTerminal()
        
    }
}
