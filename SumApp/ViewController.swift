//
//  ViewController.swift
//  SumApp
//
//  Created by Tifo Audi Alif Putra on 03/09/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        number1TextField.delegate = self
        number2TextField.delegate = self
    }

    @IBAction func resultButtonTapped(_ sender: Any) {
        let number1 = Int(number1TextField.text!)!
        let number2 = Int(number2TextField.text!)!
        
        resultLabel.text = "\(number1 + number2)"
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
}

