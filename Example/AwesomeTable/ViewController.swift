//
//  ViewController.swift
//  AwesomeTable
//
//  Created by dylanNew on 03/26/2018.
//  Copyright (c) 2018 dylanNew. All rights reserved.
//

import UIKit
import AwesomeTable

class ViewController: AwesomeTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        form +++
            Section()
            <<< LabelRow(title: "First")
            .onSelected { row in
                print(row)
            }
            <<< LabelRow(title: "Second")
        self.tableView.reloadData()

    }
}
