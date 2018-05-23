//
//  MVPViewController.swift
//  MVP
//
//  Created by 聂康 on 2018/5/23.
//  Copyright © 2018年 niekang. All rights reserved.
//

import UIKit

class MVPViewController<V: MVPViewProtocol, P: MVPPresenterProtocol>: UIViewController {

    private var mvpView: V?
    private var presenter: P?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.presenter == nil {
            self.presenter = self.createPresenter()
        }
        
        if self.mvpView == nil {
            self.mvpView = self.createMVPView()
        }
    }
    
    func createMVPView() -> V? {
        return nil
    }
    
    func createPresenter() -> P? {
        return nil
    }
    
    func getMVPView() -> V? {
        return self.mvpView
    }
    
    func getPresenter() -> P? {
        return self.presenter
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
