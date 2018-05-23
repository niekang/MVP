//
//  Presenter.swift
//  MVP
//
//  Created by 聂康 on 2018/5/23.
//  Copyright © 2018年 niekang. All rights reserved.
//

import Foundation

class Presenter: MVPPresenter<LoginView> {
    
    var model: Model?

    override init() {
        self.model = Model()
    }

    func login(name: String, password: String) {
        self.model?.login(name: name, password: password, callback: { (string) in
            if let v = self.getView() {
                v.getResult(string)
            }
        })
    }
}
