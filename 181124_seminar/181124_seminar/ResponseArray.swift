//
//  ResponseArray.swift
//  181124_seminar
//
//  Created by 박소현 on 24/11/2018.
//  Copyright © 2018 박소현. All rights reserved.
//

import Foundation
import ObjectMapper

struct ResponseArray<T: Mappable>: Mappable {
    
    var status: Int?
    var message: String?
    var data: [T]?
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
