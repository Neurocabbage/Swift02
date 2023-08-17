//
//  FriendCell.swift
//  HomeWorkSwift01
//
//  Created by Fedot on 8/17/23.
//  Copyright © 2023 Fedot. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
    }


    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func friendNumber(number: Int) {
        var content = defaultContentConfiguration()
        content.text = "Friend # \(number + 1)"
        contentConfiguration = content
    }
}
