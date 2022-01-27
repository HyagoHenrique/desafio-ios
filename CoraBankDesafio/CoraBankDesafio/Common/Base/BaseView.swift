//
//  BaseView.swift
//  CoraBankDesafio
//
//  Created by Hyago Henrique on 27/01/22.
//
import UIKit

class BaseView: UIView {
    
    //MARK: - View Components
    @ViewCodeComponent
    var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.keyboardDismissMode = .interactive
        return scrollView
    }()
    
    @ViewCodeComponent
    var contentView: UIView = {
        let content = UIView(frame: .zero)
        return content
    }()
    
    @ViewCodeComponent
    var loadingView: LoadingView = {
        let loading = LoadingView()
        loading.backgroundColor = UIColor.systemBackground.withAlphaComponent(0.75)
        loading.loadingSpinner.startAnimating()
        loading.isHidden = true
        return loading
    }()
    
    //MARK: - Methods
    func performLoading(status: Bool) {
        if status {
            loadingView.isHidden = false
            loadingView.loadingSpinner.startAnimating()
        } else {
            loadingView.isHidden = true
            loadingView.loadingSpinner.stopAnimating()
            loadingView.setLoadingMessage("Loading")
        }
    }
    
    //MARK: - Constraint Methods
    func scrollViewConstraints() {
        //ScrollView
        scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        //ContainerScrollView
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    
    func loadingConstraints() {
        loadingView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        loadingView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        loadingView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        loadingView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}
