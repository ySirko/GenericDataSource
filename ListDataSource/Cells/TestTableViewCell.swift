//
//  File.swift
//  ListDataSource
//
//  Created by Yuriy Sirko on 8/5/16.
//  Copyright © 2016 Yuriy Sirko. All rights reserved.
//

import UIKit

final public class TestTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var descriptionLabel: UILabel!
    
    // MARK: - Public Properties
    
    public var titleString: String? {
        didSet {
            titleLabel.text = titleString
        }
    }
    
    public var descriptionString: String? {
        didSet {
            self.descriptionLabel.text = descriptionString
        }
    }
}
