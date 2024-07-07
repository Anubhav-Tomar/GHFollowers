//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Anubhav Tomar on 07/07/24.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
