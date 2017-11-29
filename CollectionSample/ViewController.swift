//
//  ViewController.swift
//  CollectionSample
//
//  Created by Morita Jun on 2017/11/25.
//  Copyright © 2017年 Morita Jun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    let photos: [String] = [
        "Image1", "Image2", "Image3", "Image4", "Image5"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        let identifier: String = photos[indexPath.row]
        
        cell.setData(identifier: identifier)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    // UICollectionViewDelegateFlowLayout
    // NOTE: プロトコル指定忘れずに！
    // 画面サイズにあったセルサイズを計算して合わせこみができる
    // サイズが大きいと列が1列になるので、StoryboardのSizeInspectorのMin Spacingで
    // For Cells:0 For Lines:1といった感じで調整する
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellSize: CGFloat = self.view.bounds.width/2 - 2
        // 正方形で返すためにwidth,heightを同じにする
        return CGSize(width: cellSize, height: cellSize)
    }

}

