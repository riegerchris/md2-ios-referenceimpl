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

        let myFirstLabel = UILabel()
        
        myFirstLabel.text = "First label to show content"
        myFirstLabel.font = UIFont(name: "MarkerFelt-Thin", size: 45)
        myFirstLabel.textColor = UIColor.redColor()
        myFirstLabel.textAlignment = .Center
        myFirstLabel.numberOfLines = 5
        myFirstLabel.frame = CGRectMake(15, 54, 300, 500)
        
        self.view.addSubview(myFirstLabel)
        
        var button = UIButton(frame: CGRectMake(120, 80, 150, 100))
        button.backgroundColor = UIColor.blueColor()
        button.setTitle("Name", forState: .Normal)
        button.alpha = 0.6
        button.layer.borderWidth = 0.3
        button.layer.cornerRadius = 2
        button.addTarget(self, action: "pressme", forControlEvents: .TouchUpInside)
        button.titleLabel!.textAlignment=NSTextAlignment.Center
        
        self.view.addSubview(button)
        
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
