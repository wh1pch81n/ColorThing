//
//  DViewController.swift
//  Dependency
//
//  Created by Derrick Ho on 7/11/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

import UIKit

let colorB = { b in
    UIColor.init(named: "ABCColor3", in: b, compatibleWith: nil)
}

public class ViewController1: UIViewController {
    @IBOutlet weak var view3: UIView!
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view3.backgroundColor = colorB(.main)
            ?? colorB(Bundle.init(for: type(of: self)))    }
}
public class ViewController2: UIViewController {
    @IBOutlet weak var view3: UIView!

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view3.backgroundColor = colorB(.main)
            ?? colorB(Bundle.init(for: type(of: self)))
    }
}
public class ViewController3: UIViewController {
    @IBOutlet weak var view3: UIView!

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.async {
            self.view3.backgroundColor = colorB(.main)
                ?? colorB(Bundle.init(for: type(of: self)))
        }
    }
}
