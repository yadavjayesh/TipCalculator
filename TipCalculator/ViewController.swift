//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jayesh Yadav on 12/16/16.
//  Copyright © 2016 Jayesh Yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var equalLbl: UILabel!
    @IBOutlet weak var plsLbl: UILabel!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var splitOneLbl: UILabel!
    @IBOutlet weak var splitTwoLbl: UILabel!
    @IBOutlet weak var splitThreeLbl: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var percentSelectSG: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLbl.textColor = UIColor.white
        totalLbl.textColor = UIColor.white
        splitOneLbl.textColor = UIColor.white
        splitTwoLbl.textColor = UIColor.white
        splitThreeLbl.textColor = UIColor.white
        plsLbl.textColor = UIColor.white
        equalLbl.textColor = UIColor.white
        billField.textColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func percentChange(_ sender: Any) {
        self.calcTip(Any)
    }
   
    @IBAction func calcTip(_ sender: Any) {
        
        let percent = [0.18,0.20,0.25];
        let bill = Double(billField.text!) ?? 0
        let tip = bill*percent[percentSelectSG.selectedSegmentIndex];
        let total = bill + tip;
        let oneSplit = total/2;
        let twoSplit = total/3;
        let threeSplit = total/4;
        tipLbl.text = String.init(format: "$%.2f", tip)
        totalLbl.text = String.init(format: "$%.2f", total)
        splitOneLbl.text = String.init(format: "$%.2f", oneSplit)
        splitTwoLbl.text = String.init(format: "$%.2f", twoSplit)
        splitThreeLbl.text = String.init(format: "$%.2f", threeSplit)
    }
}

