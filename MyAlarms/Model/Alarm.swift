//
//  Alarm.swift
//  MyAlarms
//
//  Created by Hannah Hoff on 1/28/19.
//  Copyright © 2019 Hannah Hoff. All rights reserved.
//

import Foundation

class Alarm: Equatable, Codable {
    
    init(fireDate: Date, name: String, enabled: Bool = true, uuid: String = UUID().uuidString) {
        self.fireDate = fireDate
        self.name = name
        self.enabled = enabled
        self.uuid = uuid
    }
    
    // MARK: Properties
    var name: String
    var enabled: Bool
    let uuid: String
    var fireDate: Date
    
    var fireTimeAsString: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: fireDate)
    }
}

// MARK: - Equatable
func ==(lhs: Alarm, rhs: Alarm) -> Bool {
    return lhs.uuid == rhs.uuid
}
