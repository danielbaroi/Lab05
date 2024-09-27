//
//  Knight.swift
//  Lab05
//
//  Created by Daniel Baroi on 9/23/24.
//

import Foundation


struct Knight {
    
    private(set) var level: Int
    private(set) var goldCoins: Int
    private(set) var hitPoints: Int
    private(set) var health: Int
    private var armor: Armor
    
    
    struct Armor {
        let material: String
        let hitPoints: Int
        private(set) var health: Int
        
        init(material: String, hitPoints: Int) {
            self.material = material
            self.hitPoints = hitPoints
            self.health = hitPoints
        }
        
        mutating func takeDamage(damage: Int) {
            self.health = max(self.health - damage, 0)
        }
        
        mutating func repair(coins: Int) {
            self.health = min(self.health + coins, hitPoints)
        }
    }

    
    init(hitPoints: Int, armorMaterial: String, armorHitPoints: Int) {
        self.level = 1
        self.goldCoins = 0
        self.hitPoints = hitPoints
        self.health = hitPoints
        self.armor = Armor(material: armorMaterial, hitPoints: armorHitPoints)
    }
    
    
    mutating func takeDamage(damage: Int) {
        let armorAbsorbed = min(armor.health, damage)
        armor.takeDamage(damage: armorAbsorbed)
        let remainingDamage = damage - armorAbsorbed
        self.health = max(self.health - remainingDamage, 0)
    }
    
    mutating func repairArmor(coins: Int) {
        armor.repair(coins: coins)
    }
    
    mutating func rest() {
        self.health = min(self.health + 10, hitPoints)
    }
}
