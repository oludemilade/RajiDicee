//
//  ViewController.swift
//  RajiDice
//
//  Created by Oludemilade Raji on 12/29/17.
//  Copyright © 2017 Oludemilade Raji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex : [Int] = [0,0]
    let diceArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex[0] = Int(arc4random_uniform(6))
        randomDiceIndex[1] = Int(arc4random_uniform(6))
        
        print("Debug Values: ", randomDiceIndex[0] + 1, " ", randomDiceIndex[1] + 1)
        
        diceImageView1.image = diceArray[randomDiceIndex[0]];
        diceImageView2.image = diceArray[randomDiceIndex[1]];
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

