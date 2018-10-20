//
//  HomeDatasourceController.swift
//  Twitter_Swift_Programatically_No3
//
//  Created by masato on 20/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import LBTAComponents


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
