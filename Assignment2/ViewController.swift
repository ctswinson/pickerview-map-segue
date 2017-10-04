//
//  ViewController.swift
//  Assignment2
//
//  Created by Chris Swinson on 9/18/17.
//  Copyright © 2017 Chris Swinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var HQ = ["Nintendo HQ", "Sony HQ", "Microsoft HQ", "Apple HQ", "Google HQ"]
    
    var HQAddress = ["https://bit.ly/2xh7DtY", "https://bit.ly/2yaegvN", "https://bit.ly/2x9YDaw", "https://bit.ly/2xgCoPG", "https://bit.ly/2xtxA9W"]
    
    @IBOutlet var HQPicker: UIPickerView!
    
    @IBAction func HQbutton(_ sender: UIButton) {
    }

   
    
    var clickedHQ = UIWebView ()
    
    var mySelection = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.HQPicker.dataSource = self
        self.HQPicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }


  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     let destinationView = segue.destination as! displayMap
          if segue.identifier == "HQOne" {destinationView.whichHQ = mySelection}
     }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return HQ.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return HQ[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {mySelection = row
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        let titleData = HQ[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Arial", size: 26.0)!,NSForegroundColorAttributeName:UIColor.black])
        pickerLabel.attributedText = myTitle
        pickerLabel.backgroundColor = UIColor.red
        pickerLabel.textAlignment = .center
        return pickerLabel
    }
}

