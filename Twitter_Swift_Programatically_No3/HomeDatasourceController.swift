//
//  HomeDatasourceController.swift
//  Twitter_Swift_Programatically_No3
//
//  Created by masato on 20/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import LBTAComponents

class UserCell: DatasourceCell {

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

class HomeDatasouce: Datasource {
    let words = ["user1", "user2", "user3"]


    // DatasourceCellは、UICollectionViewCellを継承している
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }

    // get the Value from array "words"
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }

    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
}



// HomeDatasourceControllerがwindowに表示される
class HomeDatasourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // HomeDatasourse Initiarize
        let homeDatasource = HomeDatasouce()

        // DatasourceControllerの.datasource objに代入する
        self.datasource = homeDatasource


    }
}
