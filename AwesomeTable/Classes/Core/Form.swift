//
// Created by Dylan Wang on 2018/4/8.
//

import Foundation

/// The class representing the Form
public final class Form {

    public private(set) var sections = [Section]()
    
    var count: Int {
        return sections.count
    }
    
    open func append(_ section: Section) {
        sections.append(section)
    }
}

extension Form {
    subscript(index: Int) -> Section {
        return sections[index]
    }
    
    subscript(indexPath: IndexPath) -> Row {
        return sections[indexPath.section][indexPath.row]
    }
}
