//
//  OrganizationChart.swift
//  USSestriLevante
//
//  Created by Andrea Bacigalupo on 09/04/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation

class OrganizationChart {
    var season: String = ""

    var members = [OrganizationMember]()
    
    init?(json: [String: Any]) {
        season = (json["Season"] as? String)!

        let members = json["Members"]
    }
}