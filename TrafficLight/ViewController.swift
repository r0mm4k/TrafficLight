//
//  ViewController.swift
//  TrafficLight
//
//  Created by Роман Макаров on 16.02.21.
//

import UIKit

enum activeView {
    case red, yellow, green
}

class ViewController: UIViewController {

    // MARK: - IB Outletes
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    // MARK: - Private Properties
    private var activeView: activeView?
    
    // MARK: - Life Cycles Methods
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        
        startButton.layer.cornerRadius = startButton.frame.height * 0.50
    }

    // MARK: - IB Actions
    @IBAction func startButtonAction() {
        switch activeView {
        case .red:
            redView.alpha = 0.3
            activeView = .yellow
            yellowView.alpha = 1
        case .yellow:
            yellowView.alpha = 0.3
            activeView = .green
            greenView.alpha = 1
            startButton.setTitle("FINISH", for: .normal)
        case .green:
            greenView.alpha = 0.3
            activeView = nil
            startButton.setTitle("START", for: .normal)
        default:
            activeView = .red
            redView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        }
        
        
    }
    
}

