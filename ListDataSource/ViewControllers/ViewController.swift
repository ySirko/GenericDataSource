//
//  ViewController.swift
//  ListDataSource
//
//  Created by Yuriy Sirko on 8/5/16.
//  Copyright © 2016 Yuriy Sirko. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {

    // MARK: - Private Properties
    
    private var dataSource: ListDataSource<TestTableViewCell, TestModel>?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareDataSource()
        prepareTableView()
    }
    
    // MARK: - Private Methods
    
    private func prepareTableView() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44
        tableView.dataSource = dataSource
    }
    
    private func prepareDataSource() {
        
        let items = [TestModel(title: "Title 1", description: "Description 1"),
                TestModel(title: "Title 2", description: "Description 2"),
                TestModel(title: "Title 3", description: "Description 3"),
                TestModel(title: "Title 4", description: "Description 4")];
        
        dataSource = ListDataSource<TestTableViewCell, TestModel>(items: items, configurationClosure: { (cell, item) in
            cell.titleString = item.title
            cell.descriptionString = item.description
        })
    }
}

