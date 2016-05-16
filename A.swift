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
var q1: Int = 0;
var q2: Int = 0;
var e1:String = "";
var e2:String = "";
var tx3:Int = 0;
class A: UIViewController {
    
    var db:SQLiteDB!
    
    //@IBOutlet var txtUname: UITextField!
    //@IBOutlet var txtMobile: UITextField!
    //@IBOutlet weak var L1: UILabel!
    //@IBOutlet weak var L2: UILabel!
    //@IBOutlet weak var L3: UILabel!
    //@IBOutlet weak var L4: UILabel!
    @IBOutlet weak var L5: UITextField!
    @IBOutlet weak var L6: UITextField!
    //or = L3.text
    @IBOutlet weak var t6: UITextField!
    @IBOutlet weak var t5: UITextField!
    @IBOutlet weak var t4: UITextField!
    @IBOutlet weak var t3: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //获取数据库实例
        db = SQLiteDB.sharedInstance()
        //如果表还不存在则创建表（其中uid为自增主键）
        db.execute("create table if not exists t_user(uid integer primary key,uname1 varchar(20),mobile1 varchar(20))")
        
        
        db = SQLiteDB.sharedInstance()
        //如果表还不存在则创建表（其中uid为自增主键）
        db.execute("create table if not exists t_user(uid integer primary key,uname2 varchar(20),mobile2 varchar(20))")
        //如果有数据则加载
        initUser()
    }
    
    @IBAction func jh(sender: AnyObject) {
        //t3.textColor = ;
        navigationController?.hidesBarsOnTap = true
        
    }
    @IBAction func guiling(sender: AnyObject) {
        t5.text = ""
        t3.text = "0"
        let uname2 = self.t5.text!
        let mobile2 = self.t3.text!
        //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
        let sql2 = "insert into t_user(uname2,mobile2) values('\(uname2)','\(mobile2)')"
        print("sql2: \(sql2)")
        //通过封装的方法执行sql
        let result = db.execute(sql2)
        print(result)
        initUser();
        
        
        t6.text = ""
        t4.text = "0"
        let uname1 = self.t6.text!
        let mobile1 = self.t4.text!
        //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
        let sql1 = "insert into t_user(uname1,mobile1) values('\(uname1)','\(mobile1)')"
        print("sql1: \(sql1)")
        //通过封装的方法执行sql
        let result1 = db.execute(sql1)
        print(result1)
        initUser();
    }
    //点击保存
    @IBAction func saveClicked(sender: AnyObject) {
        saveUser()
    }
    
    //从SQLite加载数据
    func initUser() {
        let data = db.query("select * from t_user")
        if data.count > 0 {
            //获取最后一行数据显示
            let user = data[data.count - 1]
            t5.text = user["uname1"] as? String
            t3.text = user["mobile1"] as? String
        }
    }
    @IBAction func saveClicked2(sender: AnyObject) {
        saveUser2()
    }
    //保存数据到SQLite
    func saveUser() {
        let uname1 = self.t5.text!
        let mobile1 = self.t3.text!
       // tx3 = (t5.text).Int;
        //tx3 = tx3+1;
        
        //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
        let sql = "insert into t_user(uname1,mobile1) values('\(uname1)','\(mobile1)')"
        print("sql: \(sql)")
        //通过封装的方法执行sql
        let result = db.execute(sql)
        print(result)
        //initUser()// Do any additional setup after loading the view, typically from a nib.
    }
    func saveUser2() {
        let uname2 = self.t6.text!
        let mobile2 = self.t4.text!
        // tx3 = (t5.text).Int;
        //tx3 = tx3+1;
        
        //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
        let sql = "insert into t_user(uname2,mobile2) values('\(uname2)','\(mobile2)')"
        print("sql: \(sql)")
        //通过封装的方法执行sql
        let result = db.execute(sql)
        print(result)
        //initUser()// Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func zuo1(sender: AnyObject) {
        q2 = 0;
        q1 = q1+1;
        e1 = L5.text! as String;
        e2 = L6.text! as String;
        ar1 = "0";
        ar1 = t3.text!;
        a3 = ((ar1) as NSString).doubleValue
        //operand2=((operand) as NSString).doubleValue
        a3 = a3 + 1;
        //ar = (a3)as NSString
        t3.text = "\(a3)";
        if(q1 == 2)
        {
            L5.text = e1;
            L6.text = e2;
            L5.text = e2;
            L6.text = e1;
        }
        //for(;;)
        
        //a3++;
        //a3 = ((ar ) as NSString).intValue;
        
    }
    @IBAction func you2(sender: AnyObject) {
        q1 = 0;
        q2 = q2+1;
        e1 = L5.text! as String;
        e2 = L6.text! as String;
        ar2 = "0";
        ar2 = t4.text!;
        a4 = ((ar2) as NSString).doubleValue
        //operand2=((operand) as NSString).doubleValue
        a4 = a4 + 1;
        //ar = (a3)as NSString
        t4.text = "\(a4)";
        if(q2 == 2)
        {
            L5.text = e1;
            L6.text = e2;
            L5.text = e2;
            L6.text = e1;
        }

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
