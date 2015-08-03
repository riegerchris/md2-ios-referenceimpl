//
//  MD2PickerView.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2PickerView: UIViewController {
    @IBOutlet var picker : UIPickerView! = UIPickerView.alloc()
    @IBOutlet var textField : UITextField! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        picker = UIPickerView()
        picker.delegate = self
        picker.dataSource = self
        picker.backgroundColor = UIColor.blackColor()
        self.textField.inputView = picker
    }
}
extension MD2PickerView: UIPickerViewDataSource {
    
    func numberOfComponentsInPickerView(colorPicker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
}

extension MD2PickerView: UIPickerViewDelegate {
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        return "Text"
    }
}