//
//  ViewController.swift
//  MVP
//
//  Created by 聂康 on 2018/5/23.
//  Copyright © 2018年 niekang. All rights reserved.
//

import UIKit

class ViewController: MVPViewController<LoginView, Presenter>, LoginProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.getPresenter()?.attatchView(v: self.getMVPView()!)
        self.getPresenter()?.login(name: "ssss", password: "1245")
    }

    override func createMVPView() -> LoginView? {
        return LoginView(loginProtocol: self)
    }
    
    override func createPresenter() -> Presenter? {
        return Presenter()
    }
    
    func getResult(_ string: String) {
        print(string)
        //刷新UI
    }
}

