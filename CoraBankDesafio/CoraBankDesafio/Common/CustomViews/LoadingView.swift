//
//  LoadingView.swift
//  CoraBankDesafio
//
//  Created by Hyago Henrique on 27/01/22.
//

import UIKit
import Foundation

final class LoadingView: UIView, ViewCode {
    
    //MARK: - View Components
    @ViewCodeComponent
    var loadingContainer: UIView = {
        let view = UIView(frame: .zero)
        view.isOpaque = true
        view.isHidden = false
        view.backgroundColor = UIColor.systemBackground.withAlphaComponent(0.75)
        return view
    }()
    
    @ViewCodeComponent
    var loadingSpinner: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(frame: .zero)
        indicator.style = .medium
        indicator.isHidden = false
        indicator.hidesWhenStopped = true
        return indicator
    }()
    
    @ViewCodeComponent
    private var loadingMessage: UILabel = {
        let label = UILabel(frame: .zero)
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.text = "LOADING..."
        label.numberOfLines = 0
        label.textColor = .lightGray
        return label
    }()
    
    //MARK: - Super Methods
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    //MARK: - Methods
    func setupComponents() {
        addSubview(loadingContainer)
        loadingContainer.addSubview(loadingSpinner)
        loadingContainer.addSubview(loadingMessage)
    }
    
    func setLoadingMessage(_ message: String) {
        loadingMessage.text = message.uppercased()
    }
    
    func setupConstraints() {
        loadingContainer.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        loadingContainer.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        loadingContainer.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        loadingContainer.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        //Indicator
        loadingSpinner.centerXAnchor.constraint(equalTo: loadingContainer.centerXAnchor).isActive = true
        loadingSpinner.centerYAnchor.constraint(equalTo: loadingContainer.centerYAnchor).isActive = true
        
        //Message
        loadingMessage.topAnchor.constraint(equalTo: loadingSpinner.bottomAnchor, constant: 12).isActive = true
        loadingMessage.leadingAnchor.constraint(equalTo: loadingContainer.leadingAnchor, constant: 32).isActive = true
        loadingMessage.trailingAnchor.constraint(equalTo: loadingContainer.trailingAnchor, constant: -32).isActive = true
    }
    
    func setupExtraConfigurations() {
        backgroundColor = UIColor.systemBackground
    }
}
