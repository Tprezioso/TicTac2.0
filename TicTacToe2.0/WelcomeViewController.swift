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
            print("\(userText)")
            switch userText {
            case "cd":
                print("change directory")
            case "ls":
                UserDefaults.standard.set(terminalView.text!, forKey: "terminalText")
                let ticTacToeShow = "\(UserDefaults.standard.value(forKey: "terminalText")!) \nTic_Tac_Toe.exe\n\(setupTerminal())"
                terminalView.text = ticTacToeShow
                print("list directory")
            // TODO: ar case is for clear statement should fix after just in case
            case "ar":
                UserDefaults.standard.set(terminalView.text!, forKey: "terminalText")
                terminalView.text = "\(setupTerminal())"
            case "xe":
                print("open tictactoe")
                UserDefaults.standard.set(terminalView.text!, forKey: "terminalText")
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "ticTacToe")
                let ticTacToeShow = "\(UserDefaults.standard.value(forKey: "terminalText")!)\n\(setupTerminal())"
                self.navigationController?.pushViewController(controller, animated: true)
                terminalView.text = ticTacToeShow
            default:
                UserDefaults.standard.set(terminalView.text!, forKey: "terminalText")
                let terminalStuff = "\(UserDefaults.standard.value(forKey: "terminalText")!)\n\(setupTerminal())"
                terminalView.text = terminalStuff
                dissmissKeyboard()
                print ("Not valid input")
            }
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
       terminalView.text = "\(setupTerminal()) WELCOME TO TIC TAC 2.0 \n TO START TYPE GAME TYPE IN tictactoe.exe\n\(setupTerminal())"
        
    }
}
