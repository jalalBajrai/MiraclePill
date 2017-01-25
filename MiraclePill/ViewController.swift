//
//  ViewController.swift
//  MiraclePill
//
//  Created by JB on 1/22/17.
//  Copyright © 2017 Jalal Bajrai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var contryLabel: UILabel!
    @IBOutlet weak var contryTextField: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var chooseYourStateBtn: UIButton!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var enterYourCityTextbox: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var enterYourAddressTextbox: UITextField!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var enterYourNameTextbox: UITextField!
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var miraclePillsLabel: UILabel!
    @IBOutlet weak var miraclePillsImg: UIImageView!
    @IBOutlet weak var dividerUIView: UIView!
    @IBOutlet weak var buynowBtn: UIButton!
    
    
    let states = ["Alaska","Arkansas", "Alabama", "California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        //when Btn Pressed show the picker
        statePicker.isHidden = false
        contryLabel.isHidden = true
        contryTextField.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeTextField.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    // what happin when select the row change the title of Btn
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        // and when select the item it will be hidden
        statePicker.isHidden = true
        contryLabel.isHidden = false
        contryTextField.isHidden = false
        zipcodeLabel.isHidden = false
        zipcodeTextField.isHidden = false
    }
    
    @IBAction func buynowBtnPressed(_ sender: Any) {
        successImg.isHidden = false
        
        dividerUIView.isHidden = true
        miraclePillsImg.isHidden = true
        miraclePillsLabel.isHidden = true
        priceLabel.isHidden = true
        fullnameLabel.isHidden = true
        enterYourNameTextbox.isHidden = true
        streetAddressLabel.isHidden = true
        enterYourAddressTextbox.isHidden = true
        cityLabel.isHidden = true
        enterYourCityTextbox.isHidden = true
        stateLabel.isHidden = true
        chooseYourStateBtn.isHidden = true
        statePicker.isHidden = true
        contryLabel.isHidden = true
        contryTextField.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeTextField.isHidden = true
        buynowBtn.isHidden = true
    }
   
}

