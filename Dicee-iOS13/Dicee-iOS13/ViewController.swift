//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceOneImageView: UIImageView!
    @IBOutlet weak var diceTwoImageView: UIImageView!
    
    let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceOneImageView.image = returnRandomImageFromArray()
        diceTwoImageView.image = returnRandomImageFromArray()
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        diceOneImageView.image = returnRandomImageFromArray()
        diceTwoImageView.image = returnRandomImageFromArray()

    }
    
    func returnRandomImageFromArray() -> UIImage {
        return diceArray[Int.random(in: 0...5)]
    }
    
}

