//
// Created by Dylan Wang on 2018/4/8.
//

import Foundation

open class Section {
    public var tag: String?
    public var _rows = [Row]()
    public var header: HeaderFooterViewRepresentable?
    public var footer: HeaderFooterViewRepresentable?

    public init() {

    }

    public var rows: [Row] {
        return _rows
    }

    public var count: Int {
        return _rows.count
    }

    open func append(_ row: Row) {
        _rows.append(row)

    }

    open func append(contentsOf rows: [Row]) {
        _rows.append(contentsOf: rows)
    }

    open func insert(row: Row, at index: Int) {
        _rows.insert(row, at: index)
    }

    open func delete(at index: Int) {
        _rows.remove(at: index)
    }

    open func delete(tag: String) {
        let index = _rows.index { (row) -> Bool in
            row.tag == tag
        }
        if let index = index {
            delete(at: index)
        }
    }
}

extension Section {
    subscript(index: Int) -> Row {
        return _rows[index]
    }
}

public protocol HeaderFooterViewRepresentable {
    var view: UIView? { get }
    var title: String? { get }
    var height: ((UITableView) -> CGFloat)? { get }
}
