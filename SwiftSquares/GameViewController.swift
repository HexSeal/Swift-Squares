//
//  ViewController.swift
//  SwiftSquares
//
//  Created by Maxwell Finn on 11/23/20.
//

import UIKit

class ViewController: UIViewController {
    let buttons = ["1", "2", "3", "4", "5", "6", "7", "8"]
    var score: Int = 0
    var currentButton: String = "0"
    
    @IBOutlet weak var backPressed: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func tilePressed(_ sender: UIButton) {
        let buttonTitle = sender.titleLabel?.text
        if buttonTitle == currentButton {
            score += 1
            scoreLabel.text = "Score: \(score)"
        }
    }
    
    func activateButton() {
        let randomIndex = Int.random(in: 0..<buttons.count)
        for case let button as UIButton in self.view.subviews {
            if button == randomIndex {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }


}

