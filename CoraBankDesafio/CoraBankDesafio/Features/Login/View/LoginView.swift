//
//  LoginView.swift
//  CoraBankDesafio
//
//  Created by Hyago Henrique on 27/01/22.
//

import Foundation
import UIKit

final class LoginView: UIView, ViewCode {
    
    @ViewCodeComponent
    var labelTest: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .red
        label.text = "HELLO, WORLD!"
        label.numberOfLines = 1
        return label
    }()
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    func setupComponents() {
        addSubview(labelTest)
    }
    
    func setupConstraints() {
        labelTest.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        labelTest.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
    }
    
    func setupExtraConfigurations() {
        backgroundColor = UIColor.systemBackground
    }
    
}
