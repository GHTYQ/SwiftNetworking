//
//  AlamofireNetWork.swift
//  UseAlamofile
//
//  Created by Pan on 2017/11/6.
//  Copyright © 2017年 Pan. All rights reserved.
//

import UIKit
import Alamofire
//请求方式
enum RequestMethod {
    case get
    case post
    case put
    case patch
    case delete
}
class AlamofireNetWork: NSObject {
    static let shared = AlamofireNetWork() //单利唯一性只能被初始化一次
    private override init() {}
    //网络请求
    func request(method: RequestMethod,url:String ,parmeters:[String:Any],success:@escaping (_ response: [String: AnyObject])->()){
        switch method {
        case .get:
            print("get")
            Alamofire.request(url, method: .get, parameters: nil).responseJSON { (response) in
                switch response.result{
                case .success:
                    if let value = response.result.value as? [String: AnyObject] {
                        success(value)
                    }
                case .failure(let error):
                    print("error:\(error)")
                }
            }
        case .post:
            Alamofire.request(url, method: .post, parameters: nil).responseJSON { (response) in
                switch response.result{
                case .success:
                    if let value = response.result.value as? [String: AnyObject] {
                        success(value)
                    }
                case .failure(let error):
                    print("error:\(error)")
                }
            }
        default:
            print("默认")
        }
    }
}

