//
//  ViewController.swift
//  Content-Hugging-Code
//
//  Created by Egor Gorskikh on 02.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Property
    lazy var primaryLabel: UILabel = {
        let primaryLabel = UILabel()
        primaryLabel.text = "Product:"
        primaryLabel.font = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight.medium)
        primaryLabel.textColor = UIColor.init(white: 0.1, alpha: 1.0)
        primaryLabel.backgroundColor = UIColor.init(white: 0.9, alpha: 0.5)
        primaryLabel.translatesAutoresizingMaskIntoConstraints = false
        
        primaryLabel.setContentHuggingPriority(UILayoutPriority.defaultLow, for: .horizontal)
        primaryLabel.setContentCompressionResistancePriority(UILayoutPriority.defaultLow, for: .horizontal)
        
        //primaryLabel.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .horizontal)
        //primaryLabel.setContentCompressionResistancePriority(UILayoutPriority.defaultLow, for: .horizontal)
        return primaryLabel
    }()
    
    lazy var secondaryLabel: UILabel = {
        let secondaryLabel = UILabel()
        secondaryLabel.text = "Product_Name"
        secondaryLabel.font = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight.thin)
        secondaryLabel.textColor = UIColor.init(white: 0.4, alpha: 1.0)
        secondaryLabel.backgroundColor = UIColor.init(white: 0.9, alpha: 0.5)
        secondaryLabel.translatesAutoresizingMaskIntoConstraints = false
        
        secondaryLabel.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .horizontal)
        secondaryLabel.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: .horizontal)
        
        //secondaryLabel.setContentHuggingPriority(UILayoutPriority.defaultLow, for: .horizontal)
        //secondaryLabel.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh, for: .horizontal)
        
        return secondaryLabel
    }()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addPrimaryLabelWithConstraints()
        addSecondaryLabelWithConstraints()
        addConstraintsBetweenLabels()
        updateProductName(name: "Apple Macbook Pro Retina 2013")
    }
    
    // MARK: - Private method
    private func addPrimaryLabelWithConstraints() {
        self.view.addSubview(primaryLabel)
        primaryLabel.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor, constant: 30.0).isActive = true
        primaryLabel.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor, constant: 0.0).isActive = true
    }
    
    private func addSecondaryLabelWithConstraints() {
        self.view.addSubview(secondaryLabel)
        secondaryLabel.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor, constant: 30.0).isActive = true
        secondaryLabel.trailingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.trailingAnchor, constant: 0.0).isActive = true
    }
    
    private func addConstraintsBetweenLabels() {
        secondaryLabel.leadingAnchor.constraint(equalTo: primaryLabel.trailingAnchor, constant: 8.0).isActive = true
    }
    
    private func updateProductName(name productName: String) {
        secondaryLabel.text = productName
    }
    
}

