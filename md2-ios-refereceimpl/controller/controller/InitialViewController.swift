//
//  InitialViewController.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.whiteColor()
        
        // Do any additional setup after loading the view.

        let labelWidget = LabelWidget(name: MD2String("dummyname"), initialValue: MD2String("YEAH!"))
        labelWidget.render(self.view, controller: self)
        
        let buttonWidget = ButtonWidget(name: MD2String("dummyname2"), initialValue: MD2String("YEAH2!"), action: MD2String("pressme"))
        buttonWidget.render(self.view, controller: self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pressme() {
        self.navigationController!.pushViewController(SecondViewController(), animated:false)
        var alertView=UIAlertView()
        alertView.title="RK"
        alertView.addButtonWithTitle("OK")
        alertView.message="This is second view controller"
        alertView.show()
    }

}
