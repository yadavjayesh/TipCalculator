//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Jayesh Yadav on 12/17/16.
//  Copyright © 2016 Jayesh Yadav. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var percentSelectSG: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults = UserDefaults.standard
        let selectedValue = userDefaults.integer(forKey: "tipPercent")
        percentSelectSG.selectedSegmentIndex = selectedValue
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func setDefault(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(percentSelectSG.selectedSegmentIndex, forKey: "tipPercent")
    }
    
   
}
