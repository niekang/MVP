//
//  PresenterProtocol.swift
//  MVP
//
//  Created by 聂康 on 2018/5/23.
//  Copyright © 2018年 niekang. All rights reserved.
//

import Foundation

//泛型协议
protocol MVPPresenterProtocol {
    associatedtype ViewType: MVPViewProtocol
    func attatchView(v: ViewType)
    func detachView()
}
