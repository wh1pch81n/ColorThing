//
//  ViewController.swift
//  ColorThing
//
//  Created by Derrick Ho on 7/10/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let color = UIColor.init(named: "ABCColor2", in: .main, compatibleWith: nil)
        
        view2.backgroundColor = color
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

