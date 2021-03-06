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
    private let animations = Animation.getAnimation()
    
    // MARK: - Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.layer.cornerRadius = 20
        mainLabel.layer.masksToBounds = true
        nextAnimationButton.setTitle("Next animation is: \(animations[index].name)",
            for: .normal)
    }
    
    // MARK: - IB Actions
    @IBAction func changeAnimationButton(_ sender: UIButton) {
        getDescription(with: animations[index], for: mainLabel)
        runAnimation(with: animations[index].name, for: mainLabel)
        if index < animations.count - 1 {
            index += 1
        } else {
            index = 0
        }
        
        nextAnimationButton.setTitle("Next animation is: \(animations[index].name)",
            for: .normal)
    }
}

// MARK: - Extensions
extension AnimationsViewController {
    
    func runAnimation(with name: String, for label: SpringLabel) {
        mainLabel.animation = name
        mainLabel.animate()
    }
    
    func getDescription(with name: Animation, for label: SpringLabel) {
        label.animation = name.name
        
        let duration = String(format: "%.2f", name.duration)
        let force = String(format: "%.2f", name.force)
        let delay = String(format: "%.2f", name.delay)
        let velocity = String(format: "%.2f", name.velocity)
        
        label.text = """
        Name: \(name.name )
        Duration: \(duration)
        Force: \(force)
        Delay: \(delay)
        Velocity: \(velocity)
        """
    }
}
