//
//  ViewCode.swift
//  CoraBankDesafio
//
//  Created by Hyago Henrique on 27/01/22.
//

import Foundation

protocol ViewCode {
    
    func setup()
    
    func setupComponents()
    
    func setupConstraints()
    
    func setupExtraConfigurations()
}

extension ViewCode {
    
    func setup() {
        setupComponents()
        
        setupConstraints()
        
        setupExtraConfigurations()
    }
}
