//
//  GFDataLoadingVC.swift
//  GHFollowers
//
//  Created by Anubhav Tomar on 07/07/24.
//

import UIKit

class GFDataLoadingVC: UIViewController {
    
    
    fileprivate var containerView: UIView!

    func showLoadingView() {
        containerView                       = UIView(frame: view.bounds)
        view.addSubviews(containerView)
        
        containerView.backgroundColor       = .systemBackground
        containerView.alpha                 = 0
        
        UIView.animate(withDuration: 0.25) { self.containerView.alpha = 0.8 }
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        containerView.addSubview(activityIndicator)
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            activityIndicator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            activityIndicator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
        
        activityIndicator.startAnimating()
    }
    
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            self.containerView.removeFromSuperview()
            self.containerView = nil
        }
    }
    
    func showEmptyStateView(with message: String, in view: UIView) {
        if let gfEmptyStateView = view.subviews.first(where: { $0 is GFEmptyStateView }) {
            view.bringSubviewToFront(gfEmptyStateView)
            return
        }

        let emptyStateView = GFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
    }
}
