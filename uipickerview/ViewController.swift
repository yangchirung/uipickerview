//
//  ViewController.swift
//  uipickerview
//
//  Created by MBP_JackYang on 2019/11/16.
//  Copyright © 2019 MBP_JackYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮","巨蟹宮","獅子宮","處女宮","天秤宮","天蠍宮","射手宮","摩羯宮","水瓶宮","雙魚宮"]
    var bloudType = ["請選擇你的血型","A","B","O","AB"]
    var selectedAst:String? = nil
    var selectedBlood:String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
    }

    //Mark PickerView numberOfComponents
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    //Mark PickerView count of each column
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return astrological.count
        case 1:
            return bloudType.count
        default:
            return 0
        }
    }
    //Mark PickerView show value
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return astrological[row]
        case 1:
            return bloudType[row]
        default:
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
           switch component {
           case 0:
//                print( astrological[row])
                if(row == 0){
                    selectedAst = nil
                }else{
                    selectedAst = astrological[row]
                }
            
           case 1:
//               print( bloudType[row])
                if(row == 0){
                    selectedBlood = nil
                }else{
                    selectedBlood = bloudType[row]
                }
           default:
               break
           }
        
        if(selectedAst != nil && selectedBlood != nil){
            performSegue(withIdentifier: "goPage2", sender: nil)
        }
        
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! SPViewController
        nextVC.ast = selectedAst ?? ""
        nextVC.bld = selectedBlood ?? ""
    }
    

}

