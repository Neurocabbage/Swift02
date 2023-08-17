//
//  GroupsTableViewController.swift
//  HomeWorkSwift01
//
//  Created by Fedot on 8/17/23.
//  Copyright © 2023 Fedot. All rights reserved.
//

import UIKit

class GroupsTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Groups"
    }

    override func numberOfSections(in _: UITableView) -> Int {
        1
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        5
    }

    override func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let GroupCell = GroupCell()
        GroupCell.groupNumber(number: indexPath.item)
        return GroupCell
    }
}
