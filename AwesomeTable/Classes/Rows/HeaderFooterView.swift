//
//  HeaderFooterView.swift
//  AwesomeTable
//
//  Created by Dylan Wang on 2018/4/8.
//

import UIKit

open class HeaderFooterView: HeaderFooterViewRepresentable {
    public var view: UIView?
    public var title: String?
    public var height: ((UITableView) -> CGFloat)?
    
    public init(title: String, height: ((UITableView) -> CGFloat)? = nil) {
        self.title = title
        self.height = height
    }
    
    public init(view: UIView, height: ((UITableView) -> CGFloat)? = nil) {
        self.view = view
        self.height = height
    }
}
