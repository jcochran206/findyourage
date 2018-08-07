//
//  ViewController.swift
//  FindYourAge
//
//  Created by Jonathan Cochran on 8/3/18.
//  Copyright © 2018 Jonathan Cochran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtYearOfBirth: UITextField!
    @IBOutlet weak var lblShowAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnFindAge(_ sender: Any) {
        let yearOfBirth = Int(txtYearOfBirth.text!)
        // get date
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        let personAge = year - Int(yearOfBirth!)
        lblShowAge.text = "Your are \(personAge) years old"
        
    }
    
}

