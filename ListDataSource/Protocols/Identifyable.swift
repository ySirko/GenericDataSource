//
//  Identifyable.swift
//  ListDataSource
//
//  Created by Yuriy Sirko on 8/5/16.
//  Copyright © 2016 Yuriy Sirko. All rights reserved.
//

import UIKit

public protocol Identifyable {
    
    static var identifier: String { get }
}

extension Identifyable {
    
    public static var identifier: String {
        return String(self)
    }
}

extension UITableViewCell: Identifyable {
    
    public static var nib: UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
}
