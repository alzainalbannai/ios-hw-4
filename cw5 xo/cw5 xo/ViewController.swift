//
//  ViewController.swift
//  cw5 xo
//
//  Created by Alzain  on 6/28/20.
//  Copyright © 2020 Alzain albannai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     @IBOutlet weak var B1: UIButton!
     @IBOutlet weak var B2: UIButton!
     @IBOutlet weak var B3: UIButton!
     @IBOutlet weak var B4: UIButton!
     @IBOutlet weak var B5: UIButton!
     @IBOutlet weak var B6: UIButton!
     @IBOutlet weak var B7: UIButton!
     @IBOutlet weak var B8: UIButton!
     @IBOutlet weak var B9: UIButton!
     @IBOutlet weak var turnLabel: UILabel!
    
    var turn = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func tap(_ sender: UIButton) {
        if turn % 2 == 0{
           sender.setTitle("X", for: .normal)
            turnLabel.text = "O turn"
           print(turn)
            sender.isEnabled = false
           
           }
           else{
              sender.setTitle("O", for: .normal) }
        turnLabel.text = "X turn"
           print(print)
           sender.isEnabled = false
           turn += 1
           
        checkWinner(p: "X")
        checkWinner(p: "O")
    
           }
    func checkWinner(p: String) -> Bool {
          let f1 = B1.titleLabel?.text
          let f2 = B2.titleLabel?.text
          let f3 = B3.titleLabel?.text
          let f4 = B4.titleLabel?.text
          let f5 = B5.titleLabel?.text
          let f6 = B6.titleLabel?.text
          let f7 = B7.titleLabel?.text
          let f8 = B8.titleLabel?.text
          let f9 = B9.titleLabel?.text
        
        let r1 = (f1, f2, f3) == (p, p, p)
        let r2 = (f4, f5, f6) == (p, p, p)
        let r3 = (f7, f8, f9) == (p, p, p)
        let c1 = (f1, f4, f7) == (p, p, p)
        let c2 = (f2, f5, f8) == (p, p, p)
        let c3 = (f3, f6, f9) == (p, p, p)
        let d1 = (f1, f5, f9) == (p, p, p)
        let d2 = (f3, f5, f7) == (p, p, p)
        
        if r1 || r2 || r3 || c1 || c2 || c3 || d1 || d2{
            print("😆 \(p) Wins)")
            
            alert(title: "😆 \(p) Wins", message: "Congrats")
//
//                let alertController = UIAlertController(title: "\(p) wins", message: "message", preferredStyle: .alert)
//            let okAction = UIAlertAction(title: "message", style: .cancel)
//            //{(Alert) in self.reset()}
//            alertController.addAction(okAction)
//                present(alertController, animated: true)
//
            
            return true
        }
        else{
//                  alert(title: "😆 Draw", message: "Reset")
            return false
        }
    }
 func alert(title: String, message: String)
        {
                 let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                   let okAction = UIAlertAction(title: "Reset", style: .cancel)
                   //{(Alert) in self.reset()}
                   alertController.addAction(okAction)
                       present(alertController, animated: true)
                              
                      
        }
        
        
        
    @IBAction func reset(_ sender: UIButton) {
        B1.titleLabel?.text = ""
        B2.titleLabel?.text = ""
        B3.titleLabel?.text = ""
        B4.titleLabel?.text = ""
        B5.titleLabel?.text = ""
        B6.titleLabel?.text = ""
        B7.titleLabel?.text = ""
        B8.titleLabel?.text = ""
        B9.titleLabel?.text = ""
        
            B1.setTitle("", for: .normal)
            B2.setTitle("", for: .normal)
            B3.setTitle("", for: .normal)
            B4.setTitle("", for: .normal)
            B5.setTitle("", for: .normal)
            B6.setTitle("", for: .normal)
            B7.setTitle("", for: .normal)
            B8.setTitle("", for: .normal)
            B9.setTitle("", for: .normal)
        
        
            
            
                   B1.isEnabled = true
                   B2.isEnabled = true
                   B3.isEnabled = true
                   B4.isEnabled = true
                   B5.isEnabled = true
                   B6.isEnabled = true
                   B7.isEnabled = true
                   B8.isEnabled = true
                   B9.isEnabled = true
        
        turn = 0
        
        
//      @IBAction func  succsesButtonTapped(_sender:UIButton) {
//            let generator = UINotificationFeedbackGenerator()
//            generator.notificationOccurred(.success)
//
//        }
    }
    
}

   

    




