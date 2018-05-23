
//
//  Model.swift
//  MVP
//
//  Created by 聂康 on 2018/5/23.
//  Copyright © 2018年 niekang. All rights reserved.
//

import UIKit

class Model {
    
    func login(name: String, password: String, callback: @escaping (String) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            callback("sssaaaaa")
        }
    }
}
