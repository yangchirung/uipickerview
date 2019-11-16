//
//  ViewController.swift
//  uipickerview
//
//  Created by MBP_JackYang on 2019/11/16.
//  Copyright © 2019 MBP_JackYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return 3
        case 1:
            return 4
        case 2:
            return 6
        default:
            return 0
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    

}

