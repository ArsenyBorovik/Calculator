//
//  ViewController.swift
//  Calculator
//
//  Created by Арсений on 11/4/23.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    /// Representative of View (MVC)
    lazy var calculatorView: MyCalculatorView = MyCalculatorView(frame: .zero)
    /// Representative of Model (MVC)
    var dataManager = DataManager()
    
    override func loadView() {
        view = calculatorView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let obtainedStrings = dataManager.obtainString()
        calculatorView.configureTitleLabel(with: obtainedStrings)
    }
    
    /// Connection Controller -> View
    func callMeFromView() {
        
    }
    
    func problemsWithGit() {
        
    }
}

