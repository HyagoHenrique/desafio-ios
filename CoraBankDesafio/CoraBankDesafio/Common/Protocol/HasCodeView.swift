//
//  HasCodeView.swift
//  CoraBankDesafio
//
//  Created by Hyago Henrique on 27/01/22.
//


import UIKit

protocol HasCodeView {
    associatedtype CustomView: UIView
}

extension HasCodeView where Self: UIViewController {
    var customView: CustomView? {
        return view as? CustomView
    }
}
