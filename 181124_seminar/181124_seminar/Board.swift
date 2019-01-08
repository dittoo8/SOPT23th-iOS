//
//  Board.swift
//  181124_seminar
//
//  Created by 박소현 on 24/11/2018.
//  Copyright © 2018 박소현. All rights reserved.
//

import Foundation
import ObjectMapper

struct Board: Mappable {
    
    var boardId: Int?
    var boardTitle: String?
    var boardContents: String?
    var boardDate: Date?
    var userId: Int?
    var boardLike: Int?
    var boardPhoto: String?
    var auth: Bool?
    var like: Bool?
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        boardId <- map["b_id"]
        boardTitle <- map["b_title"]
        boardContents <- map["b_contents"]
        boardDate <- map["b_date"]
        userId <- map["u_id"]
        boardLike <- map["b_like"]
        boardPhoto <- map["b_photo"]
        auth <- map["auth"]
        like <- map["like"]
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'hh:mm:ss.SSSZ"
        
        if let dateString = map["b_date"].currentValue as? String,
            let _date = dateFormatter.date(from: dateString) {
            boardDate = _date
        }
    }
}
