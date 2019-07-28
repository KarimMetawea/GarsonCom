//
//  ApiManager.swift
//  GarsonCom
//
//  Created by karim metawea on 7/28/19.
//  Copyright © 2019 KarimMetawea. All rights reserved.
//

import Foundation
import Alamofire

class ApiManager {
    static let shared = ApiManager()
    
    func loginPostRequest(url:URL,headers:HTTPHeaders?,parameters:Parameters?,completion:@escaping (String?,Error?)->Void){
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseJSON { (response) in
            guard let data = response.data else {return}
            switch response.result{
                
            case .success(_):
                return completion("success",nil)
            case .failure(let error):
                return completion(nil,error)
            }
        }
    }
}
