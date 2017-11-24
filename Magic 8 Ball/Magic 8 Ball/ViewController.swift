//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Christian S. Boesen on 22/09/2017.
//  Copyright © 2017 Christian S. Boesen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var randomBallNumber : Int = 0
    
    let ballImageArray = ["ball1","ball2", "ball3","ball4","ball5"]
    
    @IBOutlet weak var textImage: UILabel!
 

   
    @IBOutlet weak var imageViewMax: UIImageView!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         updateBallNumber()
     

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 

    
    @IBAction func ask(_ sender: UIButton) {
    

        updateBallNumber()
        
    }
    
    
    func updateBallNumber(){
        randomBallNumber = Int(arc4random_uniform(5))
        
        print(randomBallNumber)
        
         imageViewMax.image = UIImage(named: ballImageArray[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
       updateBallNumber()
    }

    

}

