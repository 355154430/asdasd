//
//  A.swift
//  asdasd
//
//  Created by King on 16/4/25.
//  Copyright © 2016年 King. All rights reserved.
//

import UIKit
var a3=0;
var ar: String=""
class A: UIViewController {
    
    @IBOutlet weak var L1: UILabel!
    @IBOutlet weak var L2: UILabel!
    @IBOutlet weak var L3: UILabel!
    @IBOutlet weak var L4: UILabel!
    @IBOutlet weak var L5: UILabel!
    @IBOutlet weak var L6: UILabel!
    //or = L3.text
    @IBAction func zuo1(sender: AnyObject) {
        ar = L3.text!;
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
