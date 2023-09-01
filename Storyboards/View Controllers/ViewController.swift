//
//  ViewController.swift
//  Storyboards
//
//  Created by Bart Jacobs on 23/08/2020.
//  Copyright © 2020 Cocoacasts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Configure View
        view.backgroundColor = .red
    }

    // MARK: - Actions
    
    @IBAction func showMyViewController(_ sender: Any) {
        // Instantiate My View Controller
        guard let myViewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(identifier: "MyViewController") as? MyViewController else {
            fatalError("Unable to Instantiate My View Controller")
        }
        
        // Present My View Controller
        present(myViewController, animated: true)
    }

}
