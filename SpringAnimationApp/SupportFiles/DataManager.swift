//
//  DataManager.swift
//  SpringAnimationApp
//
//  Created by Andry Pro on 26.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import Foundation
class DataManger{
   static let shared = DataManger()
    let names = ["shake", "pop", "morph",
                 "squeeze", "wobble", "swing",
                 "flipX", "flipY", "fall",
                 "squeezeLeft", "squeezeRight", "squeezeDown",
                 "squeezeUp", "slideLeft", "slideRight",
                 "slideDown", "slideUp", "fadeIn",
                 "fadeOut", "fadeInLeft", "fadeInRight",
                 "fadeInDown", "fadeInUp", "zoomIn",
        "zoomOut", "flash"].shuffled()

}



   
   

