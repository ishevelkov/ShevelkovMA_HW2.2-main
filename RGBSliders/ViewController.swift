//
//  ViewController.swift
//  RGBSliders
//
//  Created by Михаил Шевельков on 10.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rgbScreen: UIView!
   
    @IBOutlet weak var RedCountLabel: UILabel!
    @IBOutlet weak var greenCountLabel: UILabel!
    @IBOutlet weak var blueCountLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!{
        didSet{
            redSlider.tintColor = .red
        }
    }
    
    @IBOutlet weak var greenSlider: UISlider!{
        didSet{
            greenSlider.tintColor = .green
        }
    }
    @IBOutlet weak var blueSlider: UISlider!{
        didSet{
            blueSlider.tintColor = .blue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rgbScreen.layer.cornerRadius = 10
        
        RedCountLabel.text = String(redSlider.value)
        greenCountLabel.text = String(greenSlider.value)
        blueCountLabel.text = String(blueSlider.value)
    }

    @IBAction func redSliderAction() {
        RedCountLabel.text = String(redSlider.value)
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenCountLabel.text = String(greenSlider.value)
        changeColor()
        
    }
    @IBAction func blueSlinderAction() {
        blueCountLabel.text = String(blueSlider.value)
        changeColor()
        
    }
    func changeColor() {
        rgbScreen.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}

