//
//  ViewController.swift
//  UIKitPro10
//
//  Created by Sothesom on 24/05/1403.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "FaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        defaults.set(Data(), forKey: "LastRun")
        
        let arry = ["Mohammad", "Karimi"]
        defaults.set(arry, forKey: "SaveArray")
        
        let dict = ["Name": "Sothesom", "Country": "IRAN"]
        defaults.set(dict, forKey: "SaveDic")
        
        let saveInteger = defaults.integer(forKey: "Age")
        let saveBoolean = defaults.bool(forKey: "FaceID")
        
        let saveArray = defaults.array(forKey: "SaveArray") as? [String] ?? [String]()
        let saveDic = defaults.dictionary(forKey: "SaveDic") as? [String: String] ?? [String : String]()
    }


}

