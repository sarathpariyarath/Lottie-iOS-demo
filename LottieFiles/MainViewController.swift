//
//  ViewController.swift
//  LottieFiles
//
//  Created by Sarath P on 27/04/22.
//

import UIKit
import Lottie

class MainViewController: UIViewController {

    @IBOutlet weak var lottieView: AnimationView!
    
    var animations: [String] = ["Wolverine", "103020-contact", "102926-support", "102616-friends"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
}

//MARK: IBACTIONS
extension MainViewController {
    
    @IBAction func startAnim(_ sender: Any) {
        lottieView.play()
        lottieView.loopMode = .loop
        lottieView.animationSpeed = 0.8
    }
    
    @IBAction func pauseAnim(_ sender: Any) {
        
        lottieView.pause()
    }
    
    @IBAction func stopAnim(_ sender: Any) {
        lottieView.stop()
    }
    
    @IBAction func changeAnim(_ sender: Any) {
        lottieView.play()
        lottieView.animation = Animation.named(animations.randomElement() ?? "")
    }
}

