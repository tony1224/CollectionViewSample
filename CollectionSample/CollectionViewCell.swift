//
//  CollectionViewCell.swift
//  CollectionSample
//
//  Created by Morita Jun on 2017/11/29.
//  Copyright © 2017年 Morita Jun. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var imageView: UIImageView!
    
    /// セル情報を表示します。
    ///
    /// - Parameter identifier: 識別子
    func setData(identifier: String) {
        // 画像
        let cellImage: UIImage = UIImage(named: identifier)!
        imageView.image = cellImage
        // ラベル
        label.text = identifier
    }
    
}
