//
//  YoungTeam.swift
//  USSestriLevante
//
//  Created by Andrea Bacigalupo on 09/04/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation

class YoungTeam {
    var category: String = ""    
    var players = [Players]()
    var staff = [Staff]()
    
    init?(json: [String: Any]) {
        name = (json["Name"] as? String)!

        let players = json["Players"]
        let staff = json["Staff"]
    }
}