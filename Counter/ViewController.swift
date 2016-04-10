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
        numberView = NumberView(frame: CGRectMake(0, 0, view.frame.width, view.frame.height / 2))
        view.addSubview(numberView)
        factView = FactView(frame: CGRectMake(0, view.frame.height / 2, view.frame.width, view.frame.height / 2), textContainer: nil)
        view.addSubview(factView)
        let tap = UITapGestureRecognizer(target: self, action: Selector("tap:"))
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        view.addGestureRecognizer(tap)
    }
    
    func tap(recognizer: UITapGestureRecognizer) {
        numberView.increment()
        factView.showFactForValue(numberView.value)
    }
}



