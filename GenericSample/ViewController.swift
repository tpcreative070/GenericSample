//
//  ViewController.swift
//  GenericSample
//
//  Created by phong070 on 29/07/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let mArray = [1.1,1.2]
        let mArrayString = ["Apple","Coconut","Pineapple"]
        print(mArray.sum())
        print(mArrayString.concatenate())
    }
}

extension Array where Element : Numeric {
    func sum() -> Element {
        return self.reduce(0,{$0+$1})
    }
}


extension Array where Element == String {
    func concatenate() -> String{
        return self.reduce("", {$0+$1})
    }
}
