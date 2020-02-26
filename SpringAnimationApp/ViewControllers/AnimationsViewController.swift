//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Andry Pro on 26.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import Spring

class AnimationsViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var mainLabel: SpringLabel!
    @IBOutlet weak var nextAnimationButton: UIButton!
    
    // MARK: - Private properties
    private var index = 0
    private let animations = Animation.getAnimations()
    
    // MARK: - Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.layer.cornerRadius = 20
        mainLabel.layer.masksToBounds = true
        nextAnimationButton.setTitle("Next animation is: \(animations[index])",
            for: .normal)
    }
    
    // MARK: - IB Actions
    @IBAction func changeAnimationButton(_ sender: UIButton) {
        getDescription(with: animations[index], for: mainLabel)
        runAnimation(with: animations[index], for: mainLabel)
      
        if index < animations.count - 1 {
            index += 1
        } else {
            index = 0
        }
        
        nextAnimationButton.setTitle("Next animation is: \(animations[index])",
            for: .normal)
    }
}

extension AnimationsViewController {
  
    func runAnimation(with name: String, for label: SpringLabel) {
           label.animation = name
           label.animate()
       }
       
       func getDescription(with name: String, for label: SpringLabel) {
           label.animation = name
           label.text = """
           Name: \(name.description)
           Duration: \(label.duration)
           Force: \(label.force)
           Delay: \(label.delay)
           Velocity: \(label.velocity)
           """
       }
}
