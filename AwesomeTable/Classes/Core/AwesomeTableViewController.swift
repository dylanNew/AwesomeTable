//
//  AwesomeTableViewController.swift
//  AwesomeTable
//
//  Created by Dylan Wang on 26/03/2018.
//

import UIKit

open class AwesomeTableViewController: UITableViewController {

    public let form = Form()

    override open func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override open func numberOfSections(in tableView: UITableView) -> Int {
        return form.count
    }

    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return form[section].count
    }

    override open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = form[indexPath]
        return row.dequeueItemView(for: tableView, at: indexPath)
    }

    override open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let row = form[indexPath]
        return row.iemViewHeight(for: tableView)
    }

    override open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = form[indexPath]
        row.preformSelectedAction()
    }

    override open func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = form[section]
        if let header = section.header {
            return header.title
        }
        return nil
    }
    
    override open func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let section = form[section]
        if let header = section.header {
            return header.view
        }
        return nil
    }

    override open func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let section = form[section]
        if let header = section.header,
            let height = header.height {
            return height(tableView)
        }
        return UITableViewAutomaticDimension
    }
    
    override open func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        let section = form[section]
        if let footer = section.footer {
            return footer.title
        }
        return nil
    }
    
    override open func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let section = form[section]
        if let footer = section.footer {
            return footer.view
        }
        return nil
    }
    
    override open func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        let section = form[section]
        if let footer = section.footer,
            let height = footer.height {
            return height(tableView)
        }
        return UITableViewAutomaticDimension
    }
}
