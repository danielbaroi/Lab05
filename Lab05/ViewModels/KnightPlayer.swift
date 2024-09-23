//
//  KnightPlayer.swift
//  Lab05
//
//  Created by Daniel Baroi on 9/23/24.
//

import Foundation


class KnightPlayer {
    // Knight model instance
    var knight: Knight

    // Initializer
    init() {
        self.knight = Knight(hitPoints: 50, armorMaterial: "❤️", armorHitPoints: 100)
    }
}

