//
//  ViewController.swift
//  Magic Ball
//
//  Created by Emily Vaz on 10/03/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var crystalBall: UIImageView!

    @IBAction func askButton(_ sender: UIButton) {
        
        let ballImages = ["crystalball1", "crystalball2", "crystalball3", "crystalball4", "crystalball5", "crystalball6"]
        
        let ballResult = Int.random(in: 0...5)
        
        let newImage = UIImage(named: ballImages[ballResult])

        UIView.transition(with: crystalBall, duration: 0.4, options: .transitionCrossDissolve, animations: {
            self.crystalBall.image = newImage
        }, completion: nil)
    }
}
