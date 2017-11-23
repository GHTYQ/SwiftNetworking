//
//  ViewController.swift
//  MyAlamofileDemo
//
//  Created by Pan on 2017/11/21.
//  Copyright © 2017年 Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//     https://zch.kuosanyun.com/coupon/display_style_templates_v2/
       let parms = ["category_name": "" , "page": ""] as [String : Any]
        AlamofireNetWork.shared.request(method: .post, url: "https://zch.kuosanyun.com/coupon/display_style_templates_v2/", parmeters: parms) { (result) in
            print(result)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

