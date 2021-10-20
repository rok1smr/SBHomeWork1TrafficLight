//
//  ViewController.swift
//  SBHomeWork1TrafficLight
//
//  Created by Konstantin on 20.10.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var actionButton: UIButton!
    
    override func viewDidLoad() {
        redLightView.alpha = 0.5
        yellowLightView.alpha = 0.5
        greenLightView.alpha = 0.5
        
        actionButton.layer.cornerRadius = 10
        
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        redLightView.layer.cornerRadius = redLightView.frame.size.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.size.height / 2
    }
    
    
    @IBAction func actionButtonPressed(_ sender: Any) {
        actionButton.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha == 0.5 && yellowLightView.alpha == 0.5 && greenLightView.alpha == 0.5 {
            redLightView.alpha = 1
        } else if redLightView.alpha == 1 && yellowLightView.alpha == 0.5 && greenLightView.alpha == 0.5 {
            redLightView.alpha = 0.5
            yellowLightView.alpha = 1
        } else if redLightView.alpha == 0.5 && yellowLightView.alpha == 1 && greenLightView.alpha == 0.5 {
            yellowLightView.alpha = 0.5
            greenLightView.alpha = 1
        } else if redLightView.alpha == 0.5 && yellowLightView.alpha == 0.5 && greenLightView.alpha == 1 {
            greenLightView.alpha = 0.5
            redLightView.alpha = 1
        }
        
    }
    
}

