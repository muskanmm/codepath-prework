//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Muskan Mankikar on 6/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!

    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var schoolNameLabel: UILabel!
    @IBOutlet weak var petsLabel: UILabel!
    @IBOutlet weak var morePetsLabel: UILabel!
    
    @IBOutlet weak var introduceButton: UIButton!
    @IBOutlet weak var lightModeButton: UIButton!
    @IBOutlet weak var darkModeButton: UIButton!
    @IBOutlet weak var advancedIntroButton: UIButton!
    
    @IBOutlet weak var favColorLabel: UILabel!
    @IBOutlet weak var favColorTextField: UITextField!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTap(_ sender: UIButton) {
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        var introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        if advancedIntroButton.isHidden {
            introduction = introduction + " Also, my favorite color is \(favColorTextField.text!)!"
        }
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func lightModeDidTap(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.white
        self.firstNameTextField.backgroundColor = UIColor.white
        self.lastNameTextField.backgroundColor = UIColor.white
        self.schoolNameTextField.backgroundColor = UIColor.white
        
        self.firstNameLabel.textColor = UIColor.black
        self.lastNameLabel.textColor = UIColor.black
        self.schoolNameLabel.textColor = UIColor.black
        self.petsLabel.textColor = UIColor.black
        self.morePetsLabel.textColor = UIColor.black
        self.numberOfPetsLabel.textColor = UIColor.black
        
        self.introduceButton.backgroundColor = UIColor.white
        
    }
    
    
    @IBAction func darkModeDidTap(_ sender: UIButton) {
        self.view.backgroundColor = UIColor(red: 0.4353, green: 0.4392, blue: 0.4392, alpha: 1.0)
        self.firstNameTextField.backgroundColor = UIColor(red: 0.8157, green: 0.8314, blue: 0.851, alpha: 1.0)
        self.lastNameTextField.backgroundColor = UIColor(red: 0.8157, green: 0.8314, blue: 0.851, alpha: 1.0)
        self.schoolNameTextField.backgroundColor = UIColor(red: 0.8157, green: 0.8314, blue: 0.851, alpha: 1.0)
        
        self.firstNameLabel.textColor = UIColor.white
        self.lastNameLabel.textColor = UIColor.white
        self.schoolNameLabel.textColor = UIColor.white
        self.petsLabel.textColor = UIColor.white
        self.morePetsLabel.textColor = UIColor.white
        self.numberOfPetsLabel.textColor = UIColor.white
        
        self.yearSegmentedControl.backgroundColor = UIColor.white
        
        self.morePetsStepper.backgroundColor = UIColor.white
        
        //self.darkModeButton.backgroundColor = UIColor.white
        self.lightModeButton.backgroundColor = UIColor.white
        self.introduceButton.backgroundColor = UIColor(red: 0.8706, green: 0.8784, blue: 0.8902, alpha: 1.0)
        
    }
    
    
    @IBAction func advanceIntroDidTap(_ sender: UIButton) {
        self.advancedIntroButton.isHidden = true
        self.favColorLabel.isHidden = false
        self.favColorTextField.isHidden = false
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favColorLabel.isHidden = true
        favColorTextField.isHidden = true
        // Do any additional setup after loading the view.
    }


}

