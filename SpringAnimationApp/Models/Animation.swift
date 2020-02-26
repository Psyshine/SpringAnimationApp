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
    let delay: CGFloat
    let force: CGFloat
    let duration: CGFloat
    let velocity: CGFloat
}

extension Animation {
    static func getAnimation() -> [Animation] {
        let names = DataManger.shared.names
        var animations = [Animation]()
        for animation in 1..<names.count {
            animations.append(Animation(name: names[animation],
                                        delay: CGFloat.random(in: 0...1),
                                        force: CGFloat.random(in: 0...1),
                                        duration: CGFloat.random(in: 0...1),
                                        velocity: CGFloat.random(in: 0...1)))
        }
        return animations
    }
}
