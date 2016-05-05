//
//  A.swift
//  asdasd
//
//  Created by King on 16/4/25.
//  Copyright © 2016年 King. All rights reserved.
//

import UIKit
var a3: Double=0;
var a4: Double=0;
var ar1: String=""
var ar2: String=""
class A: UIViewController {
    
    //@IBOutlet weak var L1: UILabel!
    //@IBOutlet weak var L2: UILabel!
    //@IBOutlet weak var L3: UILabel!
    //@IBOutlet weak var L4: UILabel!
    @IBOutlet weak var L5: UILabel!
    @IBOutlet weak var L6: UILabel!
    //or = L3.text
    @IBOutlet weak var t6: UITextField!
    @IBOutlet weak var t5: UITextField!
    @IBOutlet weak var t4: UITextField!
    @IBOutlet weak var t3: UITextField!
    @IBAction func zuo1(sender: AnyObject) {
        ar1 = "0";
        ar1 = t3.text!;
        a3 = ((ar1) as NSString).doubleValue
        //operand2=((operand) as NSString).doubleValue
        a3 = a3 + 1;
        //ar = (a3)as NSString
        t3.text = "\(a3)";
        //for(;;)
        
        //a3++;
        //a3 = ((ar ) as NSString).intValue;
        
    }
    @IBAction func you2(sender: AnyObject) {
        ar2 = "0";
        ar2 = t4.text!;
        a4 = ((ar2) as NSString).doubleValue
        //operand2=((operand) as NSString).doubleValue
        a4 = a4 + 1;
        //ar = (a3)as NSString
        t4.text = "\(a4)";
    }
    //@IBAction func zuo(sender: UIButton) {
        
      //  ar = L3.text!;
        //a3 = ((ar) as NSString).DoubleValue
        //a3 = ((ar) as NSString).IntValue
        //a3++
        //to string
        
        //L3.text = L3.text ++;
        // L3.text = "" ((operand) as NSString).doubleValue
        //a3 = L3.text;
        //a3 = ((or) as NSString).IntValue
    //}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
