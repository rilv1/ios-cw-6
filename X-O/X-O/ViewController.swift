//
//  ViewController.swift
//  X-O
//
//  Created by ٧. on 9/27/20.
//  Copyright © 2020 ٧. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var turnLable: UILabel!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func click(_ sender: UIButton) {
        
        print(counter)
        
        if counter % 2 == 0{
            sender.setTitle("X", for: .normal)
            turnLable.text = "O turn"
        }
        else{
            sender.setTitle("O", for: .normal)
            
        }
        counter += 1
        print(counter)
    }
    func cheecXWinner() {
    
        let r1 = b1.titleLabel?.text == "X" && b2.titleLabel?.text == "X" && b3.titleLabel?.text == "X"
        let r2 = b4.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b6.titleLabel?.text == "X"
        let r3 = b7.titleLabel?.text == "X" && b7.titleLabel?.text == "X" && b9.titleLabel?.text == "X"

        let c1 = b1.titleLabel?.text == "X" && b4.titleLabel?.text == "X" && b7.titleLabel?.text == "X"
        let c2 = b2.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b8.titleLabel?.text == "X"
        let c3 = b3.titleLabel?.text == "X" && b6.titleLabel?.text == "X" && b9.titleLabel?.text == "X"

        let d1 = b1.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b9.titleLabel?.text == "X"
        let d2 = b3.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b7.titleLabel?.text == "X"

        if r1 || r2 || r3 || c1 || c2 || c3 || d1 || d2 {
            alertWinner (winner: p)
        }
    }
    func alertWinner(winner: String){
        let alertController = UIAlertAction(title: "\(winner) wins", message: "Tap restart the game"
            ,preferredStyle: .alert)
        let action = UIAlertAction(title: "Restart", style: .cancel, handler: nil)
        alertController.addAction(action)
        self.parent(alertController,animated: true, Completion: nil)
        
            }
    
    
}

