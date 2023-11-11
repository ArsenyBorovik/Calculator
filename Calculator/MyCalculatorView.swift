//
//  MyCalculatorView.swift
//  Calculator
//
//  Created by Арсений on 11/10/23.
//

import UIKit

class MyCalculatorView: UIView {
    
    /// Array of numbers
    var dataSource: [Int] = []
    /// Sum operation
    var plusOperationClosure: (Int, Int) -> Int = {$0+$1}
    /// Difference operation
    var minusOperationClosure: (Int, Int) -> Int = {$0-$1}
    /// Multiply operation
    var multiplyOperationClosure: (Int, Int) -> Int = {$0*$1}
    /// Devision operation
    var devisionOperationClosure: (Int, Int) -> Int = {$0/$1}
    /// ViewController Link
    weak var calculatorController: CalculatorViewController?
    /// It is TAG. But XCode requires to override his method that's why tEg
    /// Anyway it helps to change operations afte press on buttons
    var teg = 5
    
    
    /// Description of zero
    private lazy var zeroButton: UIButton = {
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
    
    /// Description of one number
    private lazy var oneButton: UIButton = {
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
    
    /// Description of twoButton
    private lazy var twoButton: UIButton = {
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
    
    /// Description of threeButton
    private lazy var threeButton: UIButton = {
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
    
    /// Description of fourButton
    private lazy var fourButton: UIButton = {
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
    
    /// Description of fiveButton
    private lazy var fiveButton: UIButton = {
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
    
    /// Description of sixButton
    private lazy var sixButton: UIButton = {
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
    
    /// Description of sevenButton
    private lazy var sevenButton: UIButton = {
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
    
    /// Description of eightButton
    private lazy var eightButton: UIButton = {
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
    
    /// Description of nineButton
    private lazy var nineButton: UIButton = {
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
    
    /// Plus button. It contains adding in array and implementation of other operations
    private lazy var plusButton: UIButton = {
        let action = UIAction { _ in
            let optionalString = self.resultLabel.text
            self.resultLabel.text = ""
            if self.teg > 4 {
                self.teg = 0
            }
            if let optionalString {
                let optinalInt = Int(optionalString)
                if let optinalInt {
                    let justInt = optinalInt
                    self.dataSource.append(justInt)
                    if (self.dataSource.count >= 2 && self.teg == 1) {
                        let minus = self.minusOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [minus]
                        self.teg = 0
                    }
                    if (self.dataSource.count >= 2 && self.teg == 0) {
                        let sum = self.plusOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [sum]
                        self.teg = 0
                    }
                    if (self.dataSource.count >= 2 && self.teg == 2) {
                        let multiply = self.multiplyOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [multiply]
                        self.teg = 0
                    }
                    if (self.dataSource.count >= 2 && self.teg == 3) {
                        let devision = self.devisionOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [devision]
                        self.teg = 0
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
    
    /// Minus button. It contains adding in array and implementation of other operations
    private lazy var minusButton: UIButton = {
        let action = UIAction { _ in
            let optionalString = self.resultLabel.text
            self.resultLabel.text = ""
            if self.teg > 4 {
                self.teg = 1
            }
            if let optionalString {
                let optinalInt = Int(optionalString)
                if let optinalInt {
                    let justInt = optinalInt
                    self.dataSource.append(justInt)
                    if (self.dataSource.count >= 2 && self.teg == 0) {
                        let sum = self.plusOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [sum]
                        self.teg = 1
                    }
                    if (self.dataSource.count >= 2 && self.teg == 1) {
                        let minus = self.minusOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [minus]
                        self.teg = 1
                    }
                    if (self.dataSource.count >= 2 && self.teg == 2) {
                        let multiply = self.multiplyOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [multiply]
                        self.teg = 1
                    }
                    if (self.dataSource.count >= 2 && self.teg == 3) {
                        let devision = self.devisionOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [devision]
                        self.teg = 1
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
    
    /// Multiply button. It contains adding in array and implementation of other operations
    private lazy var multiplyButton: UIButton = {
        let action = UIAction { _ in
            let optionalString = self.resultLabel.text
            self.resultLabel.text = ""
            if self.teg > 4 {
                self.teg = 2
            }
            if let optionalString {
                let optinalInt = Int(optionalString)
                if let optinalInt {
                    let justInt = optinalInt
                    self.dataSource.append(justInt)
                    if (self.dataSource.count >= 2 && self.teg == 0) {
                        let sum = self.plusOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [sum]
                        self.teg = 2
                    }
                    if (self.dataSource.count >= 2 && self.teg == 1) {
                        let minus = self.minusOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [minus]
                        self.teg = 2
                    }
                    if (self.dataSource.count >= 2 && self.teg == 2) {
                        let multiply = self.multiplyOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [multiply]
                        self.teg = 2
                    }
                    if (self.dataSource.count >= 2 && self.teg == 3) {
                        let devision = self.devisionOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [devision]
                        self.teg = 2
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
    
    /// Devision button. It contains adding in array and implementation of other operations
    private lazy var devisionButton: UIButton = {
        let action = UIAction { _ in
            let optionalString = self.resultLabel.text
            self.resultLabel.text = ""
            if self.teg > 4 {
                self.teg = 3
            }
            if let optionalString {
                let optinalInt = Int(optionalString)
                if let optinalInt {
                    let justInt = optinalInt
                    self.dataSource.append(justInt)
                    if (self.dataSource.count >= 2 && self.teg == 0) {
                        let sum = self.plusOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [sum]
                        self.teg = 3
                    }
                    if (self.dataSource.count >= 2 && self.teg == 1) {
                        let minus = self.minusOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [minus]
                        self.teg = 3
                    }
                    if (self.dataSource.count >= 2 && self.teg == 2) {
                        let multiply = self.multiplyOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [multiply]
                        self.teg = 3
                    }
                    if (self.dataSource.count >= 2 && self.teg == 3) {
                        let devision = self.devisionOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [devision]
                        self.teg = 3
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
    
    /// Equal button. It contains adding in array and implementation of other operations
    private lazy var equalButton: UIButton = {
        let action = UIAction { _ in
            let optionalString = self.resultLabel.text
            self.resultLabel.text = ""
            if let optionalString {
                let optinalInt = Int(optionalString)
                if let optinalInt {
                    let justInt = optinalInt
                    self.dataSource.append(justInt)
                    if (self.dataSource.count >= 2 && self.teg == 0) {
                        let sum = self.plusOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [sum]
                        self.resultLabel.text = String(self.dataSource[0])
                    }
                    if (self.dataSource.count >= 2 && self.teg == 1) {
                        let minus = self.minusOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [minus]
                        self.resultLabel.text = String(self.dataSource[0])
                    }
                    if (self.dataSource.count >= 2 && self.teg == 2) {
                        let multiply = self.multiplyOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [multiply]
                        self.resultLabel.text = String(self.dataSource[0])
                    }
                    if (self.dataSource.count >= 2 && self.teg == 3) {
                        let devision = self.devisionOperationClosure(self.dataSource[0], self.dataSource[1])
                        self.dataSource = [devision]
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
    
    /// Description of resultLabel
    private lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.text = String()
        label.textColor = .black
        
        return label
    }()
    
    /// It is for MVC
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.text = String()
        label.textColor = .black
        
        return label
    }()
    
    
    /// It is for MVC
    private lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.text = String()
        label.textColor = .black
        
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(zeroButton)
        addSubview(oneButton)
        addSubview(twoButton)
        addSubview(threeButton)
        addSubview(fourButton)
        addSubview(fiveButton)
        addSubview(sixButton)
        addSubview(sevenButton)
        addSubview(eightButton)
        addSubview(nineButton)
        addSubview(plusButton)
        addSubview(minusButton)
        addSubview(multiplyButton)
        addSubview(devisionButton)
        addSubview(equalButton)
        addSubview(resultLabel)
        addSubview(titleLabel)
        addSubview(detailLabel)
        calculatorController?.callMeFromView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        NSLayoutConstraint.activate([
            zeroButton.leadingAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            zeroButton.bottomAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            oneButton.leadingAnchor.constraint(equalTo: zeroButton.trailingAnchor, constant: 0),
            oneButton.bottomAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            twoButton.leadingAnchor.constraint(equalTo: oneButton.trailingAnchor, constant: 0),
            twoButton.bottomAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            threeButton.leadingAnchor.constraint(equalTo: twoButton.trailingAnchor, constant: 0),
            threeButton.bottomAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            plusButton.leadingAnchor.constraint(equalTo: threeButton.trailingAnchor, constant: 0),
            plusButton.bottomAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            fourButton.leadingAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            fourButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor, constant: 0),
            fiveButton.leadingAnchor.constraint(equalTo: fourButton.trailingAnchor, constant: 0),
            fiveButton.bottomAnchor.constraint(equalTo: oneButton.topAnchor, constant: 0),
            sixButton.leadingAnchor.constraint(equalTo: fiveButton.trailingAnchor, constant: 0),
            sixButton.bottomAnchor.constraint(equalTo: twoButton.topAnchor, constant: 0),
            sevenButton.leadingAnchor.constraint(equalTo: sixButton.trailingAnchor, constant: 0),
            sevenButton.bottomAnchor.constraint(equalTo: threeButton.topAnchor, constant: 0),
            minusButton.leadingAnchor.constraint(equalTo: sevenButton.trailingAnchor, constant: 0),
            minusButton.bottomAnchor.constraint(equalTo: plusButton.topAnchor, constant: 0),
            eightButton.leadingAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            eightButton.bottomAnchor.constraint(equalTo: fourButton.topAnchor, constant: 0),
            resultLabel.leadingAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            resultLabel.bottomAnchor.constraint(equalTo: eightButton.topAnchor, constant: 0),
            resultLabel.widthAnchor.constraint(equalToConstant: 90),
            resultLabel.heightAnchor.constraint(equalToConstant: 90),
            nineButton.leadingAnchor.constraint(equalTo: eightButton.trailingAnchor, constant: 0),
            nineButton.bottomAnchor.constraint(equalTo: fiveButton.topAnchor, constant: 0),
            multiplyButton.bottomAnchor.constraint(equalTo: minusButton.topAnchor, constant: 0),
            multiplyButton.leadingAnchor.constraint(equalTo: nineButton.trailingAnchor, constant: 70),
            devisionButton.leadingAnchor.constraint(equalTo: resultLabel.trailingAnchor, constant: 50),
            devisionButton.bottomAnchor.constraint(equalTo: multiplyButton.topAnchor, constant: 0),
            equalButton.leadingAnchor.constraint(equalTo: resultLabel.trailingAnchor, constant: 50),
            equalButton.bottomAnchor.constraint(equalTo: devisionButton.topAnchor, constant: 0),
            titleLabel.topAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            titleLabel.trailingAnchor.constraint(equalTo: superview!.trailingAnchor, constant: 0),
            titleLabel.widthAnchor.constraint(equalToConstant: 240),
            titleLabel.heightAnchor.constraint(equalToConstant: 90),
            detailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0),
            detailLabel.leadingAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            detailLabel.trailingAnchor.constraint(equalTo: superview!.trailingAnchor, constant: 0),
            detailLabel.widthAnchor.constraint(equalToConstant: 240),
            detailLabel.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// Configuration of Labels. For MVC
    /// - Parameter strings: you have seen "Calculator" and "mini" on the screen
    func configureTitleLabel(with strings: [String]) {
        titleLabel.text = strings[0]
        titleLabel.font = .systemFont(ofSize: 66, weight: .black)
        detailLabel.text = strings[1]
        detailLabel.font = .systemFont(ofSize: 32, weight: .bold)
    }
}
