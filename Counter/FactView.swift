//
//  FactView.swift
//  Counter
//
//  Created by Zack Reneau-Wedeen on 4/4/16.
//  Copyright © 2016 Zack Reneau-Wedeen. All rights reserved.
//

import UIKit

class FactView: UITextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        textAlignment = .Center
        backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.02)
        textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7)
        font = UIFont(name: "Helvetica Neue", size: 18.0)
        textContainerInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        editable = false
        showFactForValue(0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func showFactForValue(value: Int) {
        Networker.getFact(value, callback: { fact in
            self.text = fact
        })
    }
}



