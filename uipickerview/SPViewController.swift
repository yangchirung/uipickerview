//
//  SPViewController.swift
//  uipickerview
//
//  Created by MBP_JackYang on 2019/11/16.
//  Copyright © 2019 MBP_JackYang. All rights reserved.
//

import UIKit

class SPViewController: UIViewController {


    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    var ast = "星座"
    var bld = " 血型"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {

        super.viewDidAppear(animated)
        label1.text = ast
        label2.text = bld

    }
    

}
