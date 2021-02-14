//
//  ViewController.swift
//  CardWinGame
//
//  Created by Field Employee on 2/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func dealButtonTapped(_ sender: Any) {
        let leftRandomNumber = Int.random(in: 2...14)
        let rightRandomNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber).png")
        if (leftRandomNumber > rightRandomNumber) {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if (leftRandomNumber < rightRandomNumber) {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
    
}

