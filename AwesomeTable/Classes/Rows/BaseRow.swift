//
//  DefaultBaseRow.swift
//  AwesomeTable
//
//  Created by Dylan Wang on 2018/4/8.
//

import UIKit

open class BaseRow: Row {
    public var selectedCallback: ((Row) -> Void)?
    
    public init() {
        
    }
    
    open func dequeueItemView(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    public func onSelected(_ callback: @escaping ((Row) -> Void)) -> Self {
        selectedCallback = callback
        return self
    }
}
