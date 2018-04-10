//
//  Operators.swift
//  AwesomeTable
//
//  Created by Dylan Wang on 2018/4/9.
//

import Foundation

precedencegroup FormPrecedence {
    associativity: left
    higherThan: LogicalConjunctionPrecedence
}

precedencegroup SectionPrecedence {
    associativity: left
    higherThan: FormPrecedence
}

infix operator +++: FormPrecedence

@discardableResult
public func +++ (left: Form, right: Section) -> Form {
    left.append(right)
    return left
}

@discardableResult
public func +++ (left: Form, right: Row) -> Form {
    let section = Section()
    section.append(right)
    left.append(section)
    return left
}

public func + (left: Form, right: Row) -> Form {
    if let section = left.sections.last {
        section.append(right)
        return left
    } else {
        return left +++ right
    }
}

public func + (left: Form, right: [Row]) -> Form {
    let section: Section
    if left.sections.last != nil {
        section = left.sections.last!
    } else {
        section = Section()
        left.append(section)
    }
    section.append(contentsOf: right)
    return left
}

infix operator <<<: SectionPrecedence

@discardableResult
public func <<< (left: Section, right: Row) -> Section {
    left.append(right)
    return left
}
