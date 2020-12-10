//
//  StartViewController.swift
//  SwiftSquares
//
//  Created by Maxwell Finn on 12/6/20.
//

import UIKit

class StartViewController: UIViewController {
    @IBOutlet weak var lastScoreLabel: UILabel!
    @IBAction func unwindToStart(segue:UIStoryboardSegue) {
        
    }
    
    
    func onTimerExpire(data: Int) {
        lastScoreLabel.text = "Last Score: \(data)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.

    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let vc = segue.destination as? GameViewController
        vc?.startViewController = self

    }
    

}
