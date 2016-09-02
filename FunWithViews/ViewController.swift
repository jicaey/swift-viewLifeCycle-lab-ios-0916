//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Dice
    @IBOutlet weak var dieOne: UIView!
    @IBOutlet weak var dieTwo: UIView!
    @IBOutlet weak var dieThree: UIView!
    @IBOutlet weak var dieFour: UIView!
    @IBOutlet weak var dieFive: UIView!
    @IBOutlet weak var dieSix: UIView!
    @IBOutlet weak var dieSeven: UIView!
    

    
    //labels
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    
    
    var rollLabel: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dieOne.hidden = true
        dieTwo.hidden = true
        dieThree.hidden = true
        dieFour.hidden = true
        dieFive.hidden = true
        dieSix.hidden = true
        dieSeven.hidden = true
        
        labelOne.hidden = true
        labelTwo.hidden = true
        labelThree.hidden = true
        labelFour.hidden = true
        labelFive.hidden = true
        labelSix.hidden = true
    }
    
 
       // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
   
    
    
    @IBAction func Die(sender: UIButton) {
        
        let roll: Int = randomDiceRoll()

        rollLabel += 1
        
        switch roll {
        case 1:
            dieOne.hidden = true
            dieTwo.hidden = true
            dieThree.hidden = true
            dieFour.hidden = false
            dieFive.hidden = true
            dieSix.hidden = true
            dieSeven.hidden = true
        case 2:
            dieOne.hidden = false
            dieTwo.hidden = true
            dieThree.hidden = true
            dieFour.hidden = true
            dieFive.hidden = true
            dieSix.hidden = true
            dieSeven.hidden = false
        case 3:
            dieOne.hidden = true
            dieTwo.hidden = true
            dieThree.hidden = false
            dieFour.hidden = false
            dieFive.hidden = false
            dieSix.hidden = true
            dieSeven.hidden = true
        case 4:
            dieOne.hidden = false
            dieTwo.hidden = true
            dieThree.hidden = false
            dieFour.hidden = true
            dieFive.hidden = false
            dieSix.hidden = true
            dieSeven.hidden = false
        case 5:
            dieOne.hidden = false
            dieTwo.hidden = true
            dieThree.hidden = false
            dieFour.hidden = false
            dieFive.hidden = false
            dieSix.hidden = true
            dieSeven.hidden = false
        case 6:
            dieOne.hidden = false
            dieTwo.hidden = false
            dieThree.hidden = false
            dieFour.hidden = true
            dieFive.hidden = false
            dieSix.hidden = false
            dieSeven.hidden = false
            
        case 7:
            dieOne.hidden = true
            dieTwo.hidden = true
            dieThree.hidden = true
            dieFour.hidden = true
            dieFive.hidden = true
            dieSix.hidden = true
            dieSeven.hidden = true
        default: break
        
        }
        
        switch rollLabel{
        case 1:
            labelOne.text = "\(roll)"
            
            labelOne.hidden = false
            labelTwo.hidden = true
            labelThree.hidden = true
            labelFour.hidden = true
            labelFive.hidden = true
            labelSix.hidden = true
            
        case 2:
            labelTwo.text = "\(roll)"
            
            labelOne.hidden = false
            labelTwo.hidden = false
            labelThree.hidden = true
            labelFour.hidden = true
            labelFive.hidden = true
            labelSix.hidden = true
            
        case 3:
            labelThree.text = "\(roll)"
            
            labelOne.hidden = false
            labelTwo.hidden = false
            labelThree.hidden = false
            labelFour.hidden = true
            labelFive.hidden = true
            labelSix.hidden = true
            
        case 4:
            labelFour.text = "\(roll)"
            
            labelOne.hidden = false
            labelTwo.hidden = false
            labelThree.hidden = false
            labelFour.hidden = false
            labelFive.hidden = true
            labelSix.hidden = true
            
        case 5:
            labelFive.text = "\(roll)"
            
            labelOne.hidden = false
            labelTwo.hidden = false
            labelThree.hidden = false
            labelFour.hidden = false
            labelFive.hidden = false
            labelSix.hidden = true
            
        case 6:
            labelSix.text = "\(roll)"
            
            labelOne.hidden = false
            labelTwo.hidden = false
            labelThree.hidden = false
            labelFour.hidden = false
            labelFive.hidden = false
            labelSix.hidden = false
        
        case 7:
        
            labelOne.hidden = true
            labelTwo.hidden = true
            labelThree.hidden = true
            labelFour.hidden = true
            labelFive.hidden = true
            labelSix.hidden = true
    
        default: break

    }
    
    func updateScore(){
        
                }
    }
}










