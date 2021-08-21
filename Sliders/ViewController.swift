//
//  ViewController.swift
//  Sliders
//
//  Created by Mary Jane on 19.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        updateTextSliderLabel()
        changeViewColor()
   }

    @IBAction func sliderChanged(_ sender: UISlider) {
        changeViewColor()
        updateTextSliderLabel()
    }
    
    func changeViewColor() {
        colorView.backgroundColor = UIColor(
            displayP3Red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    func updateTextSliderLabel() {
//        redValueLabel.text = String(redSlider.value)
        redValueLabel.text = String(format: "%.3f", redSlider.value)
//        greenValueLabel.text = String(greenSlider.value)
        greenValueLabel.text = String(format: "%.3f", greenSlider.value)
//        blueValueLabel.text = String(blueSlider.value)
        blueValueLabel.text = String(format: "%.3f", blueSlider.value)
    }
}

