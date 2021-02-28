//
//  UIView.swift
//  design_to_code18
//
//  Created by Shobhakar Tiwari on 08/09/20.
//  Copyright © 2020 Shobhakar Tiwari. All rights reserved.
//

import UIKit

extension UIView {
    func pin(to superView: UIView){
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
    }
}
