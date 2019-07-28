//
//  EndPoints.swift
//  GarsonCom
//
//  Created by karim metawea on 7/29/19.
//  Copyright © 2019 KarimMetawea. All rights reserved.
//

import Foundation
enum EndPoints {
     static let base = "https://garsoncom.com/div/public_html/api/v2"
    
    case login
    
    var stringValue: String {
        switch self {
        case .login:
            return EndPoints.base + "/login"
        
        }
    }
    
    var url: URL {
        return URL(string: stringValue)!
    }
}


