//
//  ViewCodeComponent.swift
//  CoraBankDesafio
//
//  Created by Hyago Henrique on 27/01/22.
//

import Foundation
import UIKit

@propertyWrapper
struct ViewCodeComponent<T: UIView> {
    var wrappedValue: T
    
    init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        self.wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}
