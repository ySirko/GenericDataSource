//
//  ListDataSource.swift
//  ListDataSource
//
//  Created by Yuriy Sirko on 8/5/16.
//  Copyright © 2016 Yuriy Sirko. All rights reserved.
//

import UIKit

final public class ListDataSource<Cell: UITableViewCell, Model where Cell: Identifyable>: NSObject, UITableViewDataSource {
    
    typealias ConfigurationClosure = (Cell, Model) -> Void
    
    // MARK: - Public Properties
    
    var configurationClosure: ConfigurationClosure?
    var items = [Model]()
    
    // MARK: - Initializers
    
    init(items: [Model] = [], configurationClosure: ConfigurationClosure?) {
        super.init()
        self.items = items
        self.configurationClosure = configurationClosure
    }
    
    // MARK: - UITableViewDataSource
    
    public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Cell.identifier)
        if let cell = cell as? Cell {
            configurationClosure?(cell, items[indexPath.row])
        }
        return cell!
    }
    
}
