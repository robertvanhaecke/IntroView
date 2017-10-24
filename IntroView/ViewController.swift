//
//  ViewController.swift
//  IntroView
//
//  Created by Robert Van Haecke on 24/10/2017.
//

import UIKit
import BWWalkthrough

class ViewController: UIViewController, BWWalkthroughViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let storyboard = self.storyboard
        {
            let walkthrough = storyboard.instantiateViewController(withIdentifier: "Walkthrough") as! BWWalkthroughViewController
            let viewOne = storyboard.instantiateViewController(withIdentifier: "Intro")
            let viewTwo = storyboard.instantiateViewController(withIdentifier: "IntroReveal")
            let viewThree = storyboard.instantiateViewController(withIdentifier: "IntroEnd")
            
            walkthrough.delegate = self
            walkthrough.add(viewController: viewOne)
            walkthrough.add(viewController: viewTwo)
            walkthrough.add(viewController: viewThree)
            
            self.present(walkthrough, animated: true, completion: nil);
        }
    }
    
    func walkthroughPageDidChange(_ pageNumber: Int) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

