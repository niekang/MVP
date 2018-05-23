//
//  BasePresenter.swift
//  MVP
//
//  Created by 聂康 on 2018/5/23.
//  Copyright © 2018年 niekang. All rights reserved.
//

import Foundation

//presenter基类
//每个presenter都需要绑定协议，解除协议，获取协议对象
class MVPPresenter<V: MVPViewProtocol>: MVPPresenterProtocol{
    
    typealias ViewType = V
    
    private var view: V?
    
    func getView() -> V?{
        return self.view
    }
    
    func attatchView(v: V) {
        self.view = v
    }
    
    func detachView() {
        self.view = nil
    }
}
