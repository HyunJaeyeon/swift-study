//
//  ViewController.swift
//  DiceGame
//
//  Created by Hyun Jaeyeon on 3/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    

    var diceArray: [UIImage] = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        //change first image view
        firstImageView.image = diceArray.randomElement()
        
        //change second image view
        secondImageView.image = diceArray.randomElement()
    }
}

