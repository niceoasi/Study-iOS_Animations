//
//  ViewController.swift
//  TransitionExample
//
//  Created by Daeyun Ethan Kim on 24/10/2017.
//  Copyright © 2017 Daeyun Ethan Kim. All rights reserved.
//

import UIKit

// MARK: - ViewController
class ViewController: UIViewController {
    
    // MARK: Properties
    var animationContainerView: UIView!
    
    // MARK: Oulets
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationContainerView = UIView(frame: view.bounds)
        animationContainerView.frame = view.bounds
        view.addSubview(animationContainerView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let newView = UIImageView(image: UIImage(named: "banner"))
        newView.center = animationContainerView.center
        //add the new view via transition
        UIView.transition(with: animationContainerView,
                          duration: 5.0,
                          options: [.curveEaseOut, .transitionFlipFromBottom],
                          animations: {
                            self.animationContainerView.addSubview(newView)
                        }
        ) {(flag) in
            /*
            UIView.transition(with: self.animationContainerView,
                              duration: 5.0,
                              options: [.curveEaseOut, .transitionFlipFromBottom],
                              animations: {
//                                newView.removeFromSuperview()
                                newView.isHidden = true
                            }
             )
             */
            let newView1 = UIImageView(image: UIImage(named: "like"))
            newView1.center = self.animationContainerView.center
            UIView.transition(from: newView,
                              to: newView1,
                              duration: 5.0,
                              options: [.curveEaseOut, .transitionFlipFromBottom],
                              completion: nil)
        }
        
    }
    // MARK: Actions
}

