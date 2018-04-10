//
// Created by Dylan Wang on 2018/4/8.
//

import UIKit

/**
    TableView Row provider,
 */
public protocol Row: AnyObject {
    var tag: String? { get }
    func iemViewHeight(for tableView: UITableView) -> CGFloat
    var selectedCallback: ((Row) -> Void)? { get }
    func dequeueItemView(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell
}

extension Row {
    internal func preformSelectedAction() {
        if let callback = selectedCallback {
            callback(self)
        }
    }
    
    public var tag: String? {
        return nil
    }
    
    public func iemViewHeight(for tableView: UITableView) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    public var selectedCallback: ((Row) -> Void)? {
        return nil
    }
}
