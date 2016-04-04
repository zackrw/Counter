//
//  ViewController.swift
//  Counter
//
//  Created by Zack Reneau-Wedeen on 4/4/16.
//  Copyright © 2016 Zack Reneau-Wedeen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberView: NumberView!
    var factView: FactView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tap = UITapGestureRecognizer(target: self, action: Selector("tap:"))
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        view.addGestureRecognizer(tap)

        numberView = NumberView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 2))
        view.addSubview(numberView)
        
        
        factView = FactView(frame: CGRect(x: 0, y: view.frame.height / 2, width: view.frame.width, height: view.frame.height / 2))
        view.addSubview(factView)
    }
    
    func tap(recognizer: UITapGestureRecognizer) {
        numberView.increment()
        factView.showFactForValue(numberView.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

