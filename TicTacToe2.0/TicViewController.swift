//
//  ViewController.swift
//  TicTacToe2.0
//
//  Created by Thomas Prezioso on 1/12/17.
//  Copyright © 2017 Thomas Prezioso. All rights reserved.
//

import UIKit

class TicViewController: UIViewController {
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
    @IBOutlet var backgroundView: UIView!
    
    @IBAction func button1(_ sender: Any) {
        label1.text = turnBase()
        winning()
    }
    
    @IBAction func button2(_ sender: Any) {
        label2.text = turnBase()
        winning()
    }
    
    @IBAction func button3(_ sender: Any) {
        label3.text = turnBase()
        winning()
    }
    
    @IBAction func button4(_ sender: Any) {
        label4.text = turnBase()
        winning()
    }
    
    @IBAction func button5(_ sender: Any) {
        label5.text = turnBase()
        winning()
    }
    
    @IBAction func button6(_ sender: Any) {
        label6.text = turnBase()
        winning()
    }
    
    @IBAction func button7(_ sender: Any) {
        label7.text = turnBase()
        winning()
    }
    
    @IBAction func button8(_ sender: Any) {
        label8.text = turnBase()
        winning()
    }
    
    @IBAction func button9(_ sender: Any) {
        label9.text = turnBase()
        winning()
    }

    func turnBase() -> String {
        if UserDefaults.standard.bool(forKey: "changeTurn") {
            UserDefaults.standard.set(false, forKey: "changeTurn")
            playerlabel.text = "\(PlayerO().playersName) \n \(PlayerO().playersMark)"
            return PlayerX().playersMark
        }
        playerlabel.text = "\(PlayerX().playersName) \n \(PlayerX().playersMark)"
        UserDefaults.standard.set(true, forKey: "changeTurn")
        return PlayerO().playersMark
    }
  
    func winning() {
        let stringLabel = ""
        let labelArray = [[label1.text, label2.text, label3.text],
                          [label1.text, label4.text, label7.text],
                          [label1.text, label5.text, label9.text],
                          [label4.text, label5.text, label6.text],
                          [label7.text, label5.text, label3.text],
                          [label7.text, label8.text, label9.text],
                          [label8.text, label5.text, label2.text],
                          [label9.text, label6.text, label3.text]]
        
        for labels in labelArray {
            if labels[0] != stringLabel && labels[1] != stringLabel && labels[2] != stringLabel {
                if labels[0] == labels[1] && labels[0] == labels[2] {
                    if labels[0] == PlayerX().playersMark {
                        winningAlert(winningPlayer: PlayerX().playersName)
                    } else {
                        winningAlert(winningPlayer: PlayerO().playersName)
                    }
                }
            }
        }
        checkForTie()
    }
    
    func winningAlert(winningPlayer:String) {
        let alert = UIAlertController(title: "\(winningPlayer) WINS!", message: "Tap OK to Play Again", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { action in
            self.resetGame()
        }))
        self.present(alert, animated: true, completion: nil)
    }

    func tieAlert() {
        let alert = UIAlertController(title: "TIE GAME!", message: "Tap OK to Play Again", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { action in
            self.resetGame()
        }))
        self.present(alert, animated: true, completion: nil)
    }

    func resetGame() {
        label1.text = ""
        label2.text = ""
        label3.text = ""
        label4.text = ""
        label5.text = ""
        label6.text = ""
        label7.text = ""
        label8.text = ""
        label9.text = ""
    }
    
    func checkForTie() {
        var checkArray = [String]()
        let labelTextArray = [label1.text,
                              label2.text,
                              label3.text,
                              label4.text,
                              label5.text,
                              label6.text,
                              label7.text,
                              label8.text,
                              label9.text]
        for textLabel in labelTextArray {
            if !(textLabel?.isEmpty)! {
               checkArray.append(textLabel!)
                if checkArray.count == 9 {
                    tieAlert()
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.insertSubview(self.backgroundView, at: 0)
         UserDefaults.standard.set(true, forKey: "changeTurn")
        playerlabel.text = "\(PlayerX().playersName) \n\(PlayerX().playersMark)"
    }
}

