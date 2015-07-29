//
//  InitialViewController.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    var layout: LayoutType
    
    init(layout: LayoutType) {
        self.layout = layout
        super.init(nibName: nil, bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.whiteColor()
        
        layout.render(self.view, controller: self)
        
        // Add and render all ui elements

  /*      let labelWidget = LabelWidget(name: MD2String("dummyname"), initialValue: MD2String("YEAH!"))
        labelWidget.render(self.view, controller: self)
        
        let buttonWidget = ButtonWidget(name: MD2String("dummyname2"), initialValue: MD2String("YEAH2!"), action: MD2String("pressme"))
        buttonWidget.render(self.view, controller: self)
        
        let textFieldWidget = TextFieldWidget(name: MD2String("dummyname3"), initialValue: MD2String("dummytext3"))
        textFieldWidget.placeholder = MD2String("dummyplaceholder")
        textFieldWidget.render(self.view, controller: self)
        
        let switchWidget = SwitchWidget(name: MD2String("dummyname4"), initialValue: MD2Boolean(true), action: MD2String())
        switchWidget.render(self.view, controller: self)*/
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pressme() {
        let action = GotoView(actionSignature: MD2String(), widgetRegistry: WidgetRegistry(), eventHandler: OnChangeHandler(), contentProviderRegistry: ContentProviderRegistry(), viewManager: ViewManager(), dataMapper: DataMapper(), targetView: MD2String())
        
        action.execute()
        /*
        self.navigationController!.pushViewController(SecondViewController(), animated:false)
        var alertView=UIAlertView()
        alertView.title="RK"
        alertView.addButtonWithTitle("OK")
        alertView.message="This is second view controller"
        alertView.show()*/
    }

}
