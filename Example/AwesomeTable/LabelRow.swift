//
//  LabelRow.swift
//  AwesomeTable_Example
//
//  Created by Dylan Wang on 2018/4/8.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import AwesomeTable

final class LabelRow: BaseRow {

    let title: String
    
    init(title: String) {
        self.title = title
        super.init()
    }
    
    private lazy var cell: UITableViewCell = {
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: nil)
        cell.textLabel?.text = title
        return cell
    }()
    
    override func dequeueItemView(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        return cell
    }

}
