//
//  ViewController.swift
//  CardWinGame
//
//  Created by Field Employee on 2/13/21.
//

//This is the last update as of 2/12/21

import UIKit

class ViewController: UIViewController {
//adding comments
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
        //Declare local variables
        
        let leftRandomNumber = Int.random(in: 2...14)
        let rightRandomNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber).png")
        
        
        //Logic for deciding which user wins a point
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

