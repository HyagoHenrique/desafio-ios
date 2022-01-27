//
//  LoginViewController.swift
//  CoraBankDesafio
//
//  Created by Hyago Henrique on 27/01/22.
//

import Foundation
import UIKit

final class LoginViewController: UIViewController, HasCodeView {
    typealias CustomView = LoginView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    
    
    
    //MARK: - Methods
    private func setupView() {
        view = LoginView()
    }
    
}
