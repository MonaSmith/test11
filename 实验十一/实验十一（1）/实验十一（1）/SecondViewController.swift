//
//  SecondViewController.swift
//  实验十一（1）
//
//  Created by apple on 2018/12/15.
//  Copyright © 2018年 wanfengling. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var stu:Student!
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tfNo.text = stu.no
        tfName.text = stu.name
        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: Any) {
       // dismiss(animated: true, completion: nil)
        stu.no = tfNo.text!
        stu.name = tfName.text!
  
        
//        for vc in self.navigationController!.viewControllers{
//            if let firstVC = vc as? FirstViewController {
//                firstVC.no = no
//                firstVC.name = name
//            }
//       }
        
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
