//
//  ViewController.swift
//  实验十一（1）
//
//  Created by apple on 2018/12/15.
//  Copyright © 2018年 wanfengling. All rights reserved.
//

import UIKit



class FirstViewController: UIViewController {
   

    var stu = Student()
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        tfNo.text = stu.no
        tfName.text = stu.name
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showSecondVC(_ sender: Any) {
        //let secVC  = SecondViewController()
        stu.no = tfNo.text!
        stu.name = tfName.text!
        
        let secVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        //secVC.tfNo.text = t
        secVC.stu = stu
        //self.present(secVC, animated: true, completion: nil)
        
        self.navigationController?.pushViewController(secVC, animated: true)
        
    }
    
    @IBAction func showThirdVC(_ sender: Any) {
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC")
        self.present(thirdVC, animated: true, completion: nil)
    }
}

