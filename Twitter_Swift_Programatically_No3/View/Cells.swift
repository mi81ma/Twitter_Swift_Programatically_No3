//
//  Cells.swift
//  Twitter_Swift_Programatically_No3
//
//  Created by masato on 20/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import LBTAComponents

// Header
class UserHeader: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .blue
    }
}


// Footer
class UserFooter: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .green
    }
}


// Cell
class UserCell: DatasourceCell {

    override var datasourceItem: Any? {
        didSet {
            nameLabel.text = datasourceItem as? String
        }
    }

    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST TEST TEST"
        return label
    }()

    override func setupViews() {
        super.setupViews()
        backgroundColor = .yellow

        // represent "nameLabel"
        addSubview(nameLabel)
        nameLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}

