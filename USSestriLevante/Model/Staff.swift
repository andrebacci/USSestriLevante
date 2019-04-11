//
//  Staff.swift
//  USSestriLevante
//
//  Created by Andrea Bacigalupo on 09/04/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation

class Staff {
    var name: String = ""
    var surname: String = ""
    var born: Int = 1900
    var urlImage: String = ""
    var role: String = ""
    
    init?(json: [String: Any]) {
        name = (json["Name"] as? String)!
        surname = (json["Surname"] as? String)!
        born = (json["Born"] as? Int)!
        urlImage = (json["UrlImage"] as? String)!
        role = (json["Role"] as? String)!
    }
}