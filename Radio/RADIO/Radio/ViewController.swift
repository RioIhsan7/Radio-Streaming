//
//  ViewController.swift
//  Radio Streming
//
//  Created by Rio Ihsan on 9/25/17.
//  Copyright © 2017 SERIOUS. All rights reserved.
//

import UIKit
import AVKit
import MediaPlayer

class ViewController: UIViewController {
    
    @IBOutlet weak var lblButton: UIButton!
    @IBOutlet weak var lblPlaypause: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnPlay(_ sender: Any) {
        toogleButtonRadio()
        
    }
    func toogleButtonRadio() {
        if RadioFunction.sharedInstance.currentPlaying() {
            pauseRadio()
            
        }else{
            playRadio()
        }
        
    }
    func pauseRadio() {
        RadioFunction.sharedInstance.pause()
        lblPlaypause.text = "Play Radio"
        lblButton.setImage(UIImage(named: "Pause.png"), for: .normal)
    }
    
    func playRadio() {
        RadioFunction.sharedInstance.play()
        lblPlaypause.text = "Pause Radio"
        lblButton.setImage(UIImage(named: "Play.png"), for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
