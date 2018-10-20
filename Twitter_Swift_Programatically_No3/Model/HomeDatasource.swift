//
//  HomeDatasource.swift
//  Twitter_Swift_Programatically_No3
//
//  Created by masato on 20/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import LBTAComponents

class HomeDatasouce: Datasource {
    let words = ["user1", "user2", "user3"]

    // Header
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }

    // Footer
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }


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



