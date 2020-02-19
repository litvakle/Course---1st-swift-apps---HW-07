//
//  Extension - Array.swift
//  Course - 1st swift apps - HW-07
//
//  Created by Lev Litvak on 19.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

extension Array where Element == String {
    mutating func removeRandom() -> String {
        return self.remove(at: Int.random(in: 0..<self.count))
    }
}
