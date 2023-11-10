//
//  ViewController.swift
//  Calculator
//
//  Created by Арсений on 11/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    var dataSource: [Int] = []
    var tag = 333
    
    lazy var zeroButton: UIButton = {
        let action = UIAction { _ in
            self.resultLabel.text! += self.zeroButton.currentTitle!
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("0", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        
        
        return button
    }()
    
    lazy var oneButton: UIButton = {
        let action = UIAction { _ in
            self.resultLabel.text! += self.oneButton.currentTitle!
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("1", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        
        
        return button
    }()
    
    lazy var twoButton: UIButton = {
        let action = UIAction { _ in
            self.resultLabel.text! += self.twoButton.currentTitle!
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("2", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var threeButton: UIButton = {
        let action = UIAction { _ in
            self.resultLabel.text! += self.threeButton.currentTitle!
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("3", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var fourButton: UIButton = {
        let action = UIAction { _ in
            self.resultLabel.text! += self.fourButton.currentTitle!
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("4", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var fiveButton: UIButton = {
        let action = UIAction { _ in
            self.resultLabel.text! += self.fiveButton.currentTitle!
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("5", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var sixButton: UIButton = {
        let action = UIAction { _ in
            self.resultLabel.text! += self.sixButton.currentTitle!
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("6", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var sevenButton: UIButton = {
        let action = UIAction { _ in
            self.resultLabel.text! += self.sevenButton.currentTitle!
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("7", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var eightButton: UIButton = {
        let action = UIAction { _ in
            self.resultLabel.text! += self.eightButton.currentTitle!
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("8", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var nineButton: UIButton = {
        let action = UIAction { _ in
            self.resultLabel.text! += self.nineButton.currentTitle!
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("9", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var plusButton: UIButton = {
        let action = UIAction { _ in
            let optionalString = self.resultLabel.text
            self.resultLabel.text = ""
            if self.tag > 4 {
                self.tag = 0
            }
            if let optionalString {
                let optinalInt = Int(optionalString)
                if let optinalInt {
                    let justInt = optinalInt
                    self.dataSource.append(justInt)
                    if (self.dataSource.count >= 2 && self.tag == 1) {
                        var minusClosure: (Int, Int) -> Int = {$0-$1}
                        let minus = minusClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [minus]
                        self.tag = 0
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 0) {
                        var plusClosure: (Int, Int) -> Int = {$0+$1}
                        let sum = plusClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [sum]
                        self.tag = 0
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 2) {
                        var multiplyClosure: (Int, Int) -> Int = {$0*$1}
                        let multiply = multiplyClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [multiply]
                        self.tag = 0
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 3) {
                        var devisionClosure: (Int, Int) -> Int = {$0/$1}
                        let devision = devisionClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [devision]
                        self.tag = 0
                        print(self.dataSource)
                    }
                }
            }
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemOrange
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var minusButton: UIButton = {
        let action = UIAction { _ in
            let optionalString = self.resultLabel.text
            self.resultLabel.text = ""
            if self.tag > 4 {
                self.tag = 1
            }
            if let optionalString {
                let optinalInt = Int(optionalString)
                if let optinalInt {
                    let justInt = optinalInt
                    self.dataSource.append(justInt)
                    if (self.dataSource.count >= 2 && self.tag == 0) {
                        var plusClosure: (Int, Int) -> Int = {$0+$1}
                        let sum = plusClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [sum]
                        self.tag = 1
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 1) {
                        var minusClosure: (Int, Int) -> Int = {$0-$1}
                        let minus = minusClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [minus]
                        self.tag = 1
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 2) {
                        var multiplyClosure: (Int, Int) -> Int = {$0*$1}
                        let multiply = multiplyClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [multiply]
                        self.tag = 1
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 3) {
                        var devisionClosure: (Int, Int) -> Int = {$0/$1}
                        let devision = devisionClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [devision]
                        self.tag = 1
                        print(self.dataSource)
                    }
                }
            }
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemOrange
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var multiplyButton: UIButton = {
        let action = UIAction { _ in
            let optionalString = self.resultLabel.text
            self.resultLabel.text = ""
            if self.tag > 4 {
                self.tag = 2
            }
            if let optionalString {
                let optinalInt = Int(optionalString)
                if let optinalInt {
                    let justInt = optinalInt
                    self.dataSource.append(justInt)
                    if (self.dataSource.count >= 2 && self.tag == 0) {
                        var plusClosure: (Int, Int) -> Int = {$0+$1}
                        let sum = plusClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [sum]
                        self.tag = 2
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 1) {
                        var minusClosure: (Int, Int) -> Int = {$0-$1}
                        let minus = minusClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [minus]
                        self.tag = 2
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 2) {
                        var multiplyClosure: (Int, Int) -> Int = {$0*$1}
                        let multiply = multiplyClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [multiply]
                        self.tag = 2
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 3) {
                        var devisionClosure: (Int, Int) -> Int = {$0/$1}
                        let devision = devisionClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [devision]
                        self.tag = 2
                        print(self.dataSource)
                    }
                }
            }
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemOrange
        button.setTitle("x", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var devisionButton: UIButton = {
        let action = UIAction { _ in
            let optionalString = self.resultLabel.text
            self.resultLabel.text = ""
            if self.tag > 4 {
                self.tag = 3
            }
            if let optionalString {
                let optinalInt = Int(optionalString)
                if let optinalInt {
                    let justInt = optinalInt
                    self.dataSource.append(justInt)
                    if (self.dataSource.count >= 2 && self.tag == 0) {
                        var plusClosure: (Int, Int) -> Int = {$0+$1}
                        let sum = plusClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [sum]
                        self.tag = 3
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 1) {
                        var minusClosure: (Int, Int) -> Int = {$0-$1}
                        let minus = minusClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [minus]
                        self.tag = 3
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 2) {
                        var multiplyClosure: (Int, Int) -> Int = {$0*$1}
                        let multiply = multiplyClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [multiply]
                        self.tag = 3
                        print(self.dataSource)
                    }
                    if (self.dataSource.count >= 2 && self.tag == 3) {
                        var devisionClosure: (Int, Int) -> Int = {$0/$1}
                        let devision = devisionClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [devision]
                        self.tag = 3
                        print(self.dataSource)
                    }
                }
            }
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemOrange
        button.setTitle("/", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var equalButton: UIButton = {
        
        let action = UIAction { _ in
            let optionalString = self.resultLabel.text
            self.resultLabel.text = ""
            if let optionalString {
                let optinalInt = Int(optionalString)
                if let optinalInt {
                    let justInt = optinalInt
                    self.dataSource.append(justInt)
                    print(self.dataSource)
                    if (self.dataSource.count >= 2 && self.tag == 0) {
                        var plusClosure: (Int, Int) -> Int = {$0+$1}
                        let sum = plusClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [sum]
                        print(self.dataSource)
                        self.resultLabel.text = String(self.dataSource[0])
                    }
                    if (self.dataSource.count >= 2 && self.tag == 1) {
                        var minusClosure: (Int, Int) -> Int = {$0-$1}
                        let minus = minusClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [minus]
                        print(self.dataSource)
                        self.resultLabel.text = String(self.dataSource[0])
                    }
                    if (self.dataSource.count >= 2 && self.tag == 2) {
                        var multiplyClosure: (Int, Int) -> Int = {$0*$1}
                        let multiply = multiplyClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [multiply]
                        print(self.dataSource)
                        self.resultLabel.text = String(self.dataSource[0])
                    }
                    if (self.dataSource.count >= 2 && self.tag == 3) {
                        var devisionClosure: (Int, Int) -> Int = {$0/$1}
                        let devision = devisionClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [devision]
                        print(self.dataSource)
                        self.resultLabel.text = String(self.dataSource[0])
                    }
                }
            }
        }
        let button = UIButton(configuration: .gray(), primaryAction: action)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemOrange
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.text = String()
        label.textColor = .black
        
        return label
    }()
    
    lazy var processLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.text = String()
        label.textColor = .black
        
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(zeroButton)
        view.addSubview(oneButton)
        view.addSubview(twoButton)
        view.addSubview(threeButton)
        view.addSubview(fourButton)
        view.addSubview(fiveButton)
        view.addSubview(sixButton)
        view.addSubview(sevenButton)
        view.addSubview(eightButton)
        view.addSubview(nineButton)
        view.addSubview(plusButton)
        view.addSubview(minusButton)
        view.addSubview(multiplyButton)
        view.addSubview(devisionButton)
        view.addSubview(equalButton)
        view.addSubview(resultLabel)
        view.addSubview(processLabel)
        
        
        setupLayout()
    }
    
//    func plusOperation(array: [Int]) -> ((Int, Int) -> Int) {
//        
//    }
    
    func setupLayout() {
//        let mainStack = UIStackView(arrangedSubviews: [zeroButton, oneButton, twoButton, threeButton, fourButton, fiveButton, sixButton, sevenButton, eightButton, nineButton, plusButton, minusButton, percentButton, multiplyButton, equalButton, resultLabel])
//        view.addSubview(mainStack)
        NSLayoutConstraint.activate([
            zeroButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            zeroButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            oneButton.leadingAnchor.constraint(equalTo: zeroButton.trailingAnchor, constant: 0),
            oneButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            twoButton.leadingAnchor.constraint(equalTo: oneButton.trailingAnchor, constant: 0),
            twoButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            threeButton.leadingAnchor.constraint(equalTo: twoButton.trailingAnchor, constant: 0),
            threeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            plusButton.leadingAnchor.constraint(equalTo: threeButton.trailingAnchor, constant: 0),
            plusButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            fourButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            fourButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor, constant: 0),
            fiveButton.leadingAnchor.constraint(equalTo: fourButton.trailingAnchor, constant: 0),
            fiveButton.bottomAnchor.constraint(equalTo: oneButton.topAnchor, constant: 0),
            sixButton.leadingAnchor.constraint(equalTo: fiveButton.trailingAnchor, constant: 0),
            sixButton.bottomAnchor.constraint(equalTo: twoButton.topAnchor, constant: 0),
            sevenButton.leadingAnchor.constraint(equalTo: sixButton.trailingAnchor, constant: 0),
            sevenButton.bottomAnchor.constraint(equalTo: threeButton.topAnchor, constant: 0),
            minusButton.leadingAnchor.constraint(equalTo: sevenButton.trailingAnchor, constant: 0),
            minusButton.bottomAnchor.constraint(equalTo: plusButton.topAnchor, constant: 0),
            eightButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            eightButton.bottomAnchor.constraint(equalTo: fourButton.topAnchor, constant: 0),
            resultLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            resultLabel.bottomAnchor.constraint(equalTo: eightButton.topAnchor, constant: 0),
            resultLabel.widthAnchor.constraint(equalToConstant: 90),
            resultLabel.heightAnchor.constraint(equalToConstant: 90),
            processLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            processLabel.bottomAnchor.constraint(equalTo: resultLabel.topAnchor, constant: 0),
            processLabel.widthAnchor.constraint(equalToConstant: 90),
            processLabel.heightAnchor.constraint(equalToConstant: 90),
            nineButton.leadingAnchor.constraint(equalTo: eightButton.trailingAnchor, constant: 0),
            nineButton.bottomAnchor.constraint(equalTo: fiveButton.topAnchor, constant: 0),
            multiplyButton.bottomAnchor.constraint(equalTo: minusButton.topAnchor, constant: 0),
            multiplyButton.leadingAnchor.constraint(equalTo: nineButton.trailingAnchor, constant: 70),
            devisionButton.leadingAnchor.constraint(equalTo: resultLabel.trailingAnchor, constant: 50),
            devisionButton.bottomAnchor.constraint(equalTo: multiplyButton.topAnchor, constant: 0),
            equalButton.leadingAnchor.constraint(equalTo: resultLabel.trailingAnchor, constant: 50),
            equalButton.bottomAnchor.constraint(equalTo: devisionButton.topAnchor, constant: 0)
        ])
    }


}

