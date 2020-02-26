//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Andry Pro on 26.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import Spring

struct  Animation {
    let name: String
}

extension Animation {
   static func getAnimations() -> [String] {
        var animations = [String]()
    let names = DataManger.shared.names
    for animation in 1..<names.count {
        animations.append(names[animation])
    }
        return animations
    }
    
    
}
