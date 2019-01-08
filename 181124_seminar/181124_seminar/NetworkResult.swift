//
//  networkresult.swift
//  181124_seminar
//
//  Created by 박소현 on 24/11/2018.
//  Copyright © 2018 박소현. All rights reserved.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case error(Error)
}
