//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet permite fazer referencias a um elemtno de design do meu Storyboard
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var leftController: UISwitch!
    @IBOutlet weak var rightController: UISwitch!
    @IBOutlet weak var allController: UISwitch!
    @IBOutlet weak var rollButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Permite substituir as iagens dos elementos de imagem quando a aplicação foi carregada
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        leftController.isOn = false
        rightController.isOn = false
        allController.isOn = true
        
        //diceImageView1.alpha = 0.4
    }
    
    public func controlRollButton() {
        if (self.leftController.isOn) ||
            (self.rightController.isOn) ||
            (self.allController.isOn) {
            rollButton.isEnabled = true
        } else {
            rollButton.isEnabled = false
        }
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
    }
    
    
    @IBAction func leftControllerPressed(_ sender: UISwitch) {
        if self.leftController.isOn {
            rightController.isOn = false
            allController.isOn = false
            diceImageView2.alpha = 0.5
            diceImageView1.alpha = 1
        } else {
            diceImageView1.alpha = 0.5
        }
        controlRollButton()
    }
    
    
    @IBAction func rightControllerPressed(_ sender: UISwitch) {
        if self.rightController.isOn {
            leftController.isOn = false
            allController.isOn = false
            diceImageView1.alpha = 0.5
            diceImageView2.alpha = 1
        } else {
            diceImageView2.alpha = 0.5
        }
        controlRollButton()
    }
    
    
    @IBAction func allControllerPressed(_ sender: UISwitch) {
        if self.allController.isOn {
            rightController.isOn = false
            leftController.isOn = false
            diceImageView1.alpha = 1
            diceImageView2.alpha = 1
        } else {
            diceImageView1.alpha = 0.5
            diceImageView2.alpha = 0.5
        }
        controlRollButton()
    }
    
}

