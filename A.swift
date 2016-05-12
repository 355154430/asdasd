//
//  A.swift
//  asdasd
//
//  Created by King on 16/4/25.
//  Copyright © 2016年 King. All rights reserved.
//
//import "sqlite3.h"
//import <time.h>
import UIKit
var a3: Double=0;
var a4: Double=0;
var ar1: String=""
var ar2: String=""
class A: UIViewController {
    
    var db:SQLiteDB!
    
    @IBOutlet var txtUnamezuo: UITextField!
    @IBOutlet var txtMobilezuo: UITextField!
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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //获取数据库实例f
        db = SQLiteDB.sharedInstance()
        //如果表还不存在则创建表（其中uid为自增主键）
        db.execute("create table if not exists t_user(uid integer primary key,uname varchar(20),mobile varchar(20))")
        //如果有数据则加载
        initUser()
    }
    
    //点击保存
    @IBAction func saveClicked(sender: AnyObject) {
        saveUser()
    }
    //@IBAction func guiling(sender: AnyObject) {
        //t3.text = ""
        //t5.text = ""
    //}
    
    //从SQLite加载数据
    func initUser() {
        let data = db.query("select * from t_user")
        if data.count > 0 {
            //获取最后一行数据显示
            let user = data[data.count - 1]
            txtUnamezuo.text = user["uname"] as? String
            txtMobile.text = user["mobile"] as? String
        }
    }
    
    //保存数据到SQLite
    func saveUser() {
        let uname = self.txtUname.text!
        let mobile = self.txtMobile.text!
        //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
        let sql = "insert into t_user(uname,mobile) values('\(uname)','\(mobile)')"
        print("sql: \(sql)")
        //通过封装的方法执行sql
        let result = db.execute(sql)
        print(result)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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
  
    
    
}
