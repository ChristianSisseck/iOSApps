//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
var player: AVAudioPlayer!

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
      
            
            let url = Bundle.main.url(forResource: "griner" + String(sender.tag), withExtension: "mp3")
            
            do {
                player = try AVAudioPlayer(contentsOf: url!)
               
            } catch {
                print(error)
            }
         player.play()
            
        }
        
    }
    
  


