//
//  ViewController.swift
//  PTrafficLight
//
//  Created by trung on 27/10/2022.
//

import UIKit

class ViewController: UIViewController {

    var aTimer: Timer!
    var clock: Int! = 0
    
    
    @IBOutlet weak var red: UILabel!
    
    @IBOutlet weak var yellow: UILabel!
    
    @IBOutlet weak var green: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
        
        
    }

    func setup() {
        aTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.clock += 1
            print(self.clock)
            print(self.aTimer.isValid)
            self.yellow.isHidden = true
            self.green.isHidden = true
            self.red.isHidden = false
            self.red.text = String(self.clock)
            
            if self.clock >= 30 {
                self.red.isHidden = true
                self.yellow.isHidden = false
                self.yellow.text = String(self.clock)
                
                if self.clock >= 38 {
                    self.yellow.isHidden = true
                    self.green.isHidden = false
                    self.green.text = String(self.clock)
                    
                    if self.clock >= 75 {
                        self.green.isHidden = true
                        self.yellow.isHidden = false
                        self.yellow.text = String(self.clock)
                        
                        if self.clock >= 83 {
                            self.yellow.isHidden = true
                            self.red.isHidden = false
                            self.red.text = String(self.clock)
                        }
                    }
                }
            }
        
        })
        
        
    }
    
    
    
}

