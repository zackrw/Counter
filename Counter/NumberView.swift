//
//  NumberView.swift
//  Counter
//
//  Created by Zack Reneau-Wedeen on 4/4/16.
//  Copyright © 2016 Zack Reneau-Wedeen. All rights reserved.
//

import UIKit

class NumberView: UILabel {
    var value = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        textAlignment = .Center
        backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.04)
        textColor = UIColor(red: 0, green: 0.5, blue: 0.9, alpha: 1.0)
        font = font.fontWithSize(100.0)
        updateText()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func increment() {
        value += 1
        updateText()
    }
    
    func updateText() {
        text = String(value)
    }
}




