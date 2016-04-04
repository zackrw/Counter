//
//  Networker.swift
//  Counter
//
//  Created by Zack Reneau-Wedeen on 4/4/16.
//  Copyright © 2016 Zack Reneau-Wedeen. All rights reserved.
//

import Alamofire

class Networker {
    static func getFact(value: Int, callback: (String) -> ()) {
        Alamofire.request(.GET, "http://numbersapi.com/" + String(value))
            .responseString { response in
                if (response.result.value != nil) {
                    callback(response.result.value!)
                }
                else {
                    callback("")
                }
        }
    }
}