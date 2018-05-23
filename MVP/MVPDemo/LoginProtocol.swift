//
//  View.swift
//  MVP
//
//  Created by 聂康 on 2018/5/23.
//  Copyright © 2018年 niekang. All rights reserved.
//

import Foundation

//具体协议
protocol LoginProtocol: MVPViewProtocol {
    
    func getResult(_ string: String)
}

class LoginView: LoginProtocol {
    //要用weak，否则会造成循环引用
    weak var loginProtocol: LoginProtocol?
    
    init(loginProtocol:LoginProtocol) {
        self.loginProtocol = loginProtocol
    }
    
    func getResult(_ string: String) {
        self.loginProtocol?.getResult(string)
    }
}
