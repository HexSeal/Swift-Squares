//
//  ViewController.swift
//  SwiftSquares
//
//  Created by Maxwell Finn on 11/23/20.
//

import UIKit

class GameViewController: UIViewController {
    let buttons = [0, 1, 2, 3, 4, 5, 6, 7]
    let time = 60
    var buttonsArray: [UIButton] = []
    var score: Int = 0
    var currentButton: Int = 0
    var randomIndex: Int!
    var lastScore: Int?
    var startViewController: StartViewController?
    
    
    
    @IBOutlet weak var backPressed: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    
    
    @IBAction func tilePressed(_ sender: UIButton) {
        print(sender.tag)
        print(currentButton)
        if sender.tag == currentButton {
            score += 1
            scoreLabel.text = "Score: \(score)"
        }
        buttonsArray[currentButton].backgroundColor = #colorLiteral(red: 1, green: 0.2156862745, blue: 0.3725490196, alpha: 1)
        setCurrentButton()
    }
    
    func setCurrentButton() {
        randomIndex = Int.random(in: 0..<buttons.count)
        currentButton = randomIndex
        buttonsArray[randomIndex].backgroundColor = UIColor.blue
    }
    
    func createTimer() {
        var runCount = 0
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            timer in
            runCount += 1
            self.timeLabel.text = "Time left: \(self.time-runCount)"
            if runCount == self.time {
                timer.invalidate()
                self.lastScore = self.score
                self.gameOverReset()
            }
        }
    }
    
    func gameOverReset(){
        startViewController?.onTimerExpire(data: lastScore!)
        startViewController?.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonsArray = [btn0, btn1, btn2, btn3, btn4, btn5, btn6, btn7]
        setCurrentButton()
        createTimer()
        
    }
}
