//
//  HomeDatasourceController.swift
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



// HomeDatasourceControllerがwindowに表示される
class HomeDatasourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // HomeDatasourse Initiarize
        let homeDatasource = HomeDatasouce()

        // DatasourceContrlolerの.datasource objに代入する
        self.datasource = homeDatasource
    }


    // Header Size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }

    // Footer Size: FooterをHomeDatasource()で作成してから、RenderをOverRideしている
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}
