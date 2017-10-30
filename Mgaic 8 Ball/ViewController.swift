//
//  ViewController.swift
//  Mgaic 8 Ball
//
//  Created by Nainesh Jethwa on 9/27/17.
//  Copyright © 2017 Nainesh Jethwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 let  ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber = 0
    

    
    @IBOutlet weak var ImageView: UIImageView!
    override func viewDidLoad() {
        
        newBallImage()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
        
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
      newBallImage()
            
            
        }
    func newBallImage() {
        
        randomBallNumber = Int(arc4random_uniform(5))
        
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
}

