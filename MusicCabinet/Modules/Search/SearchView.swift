//
//  SearchView.swift
//  MusicCabinet
//
//  Created by Alexander on 09.01.2023.
//

import UIKit
import SnapKit

extension SearchViewController {
    final class View: UIView {
        
        lazy var collectionViewLayout = factoryLayout()
        
        lazy var collectionView = setup(UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)) {
            $0.register(registerClass: SearchCollectionViewCell.Album.self)
            $0.backgroundColor = .white
            $0.alwaysBounceVertical = true
        }
        
        let titleLabel = setup(UILabel()) {
            $0.text = "Введите название группы или исполнителя"
            $0.textAlignment = .center
        }
        
        init() {
            super.init(frame: .zero)
            addSubview(collectionView)
            addSubview(titleLabel)
            backgroundColor = .lightGray
            setupConstraints()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func titleLabelAnimate(isStop: Bool = false) {
            if !isStop {
                titleLabel.isHidden = false
                
                UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
                    self.titleLabel.alpha = self.titleLabel.alpha == 0 ? 1 : 0
                }
            } else {
                titleLabel.isHidden = true
            }
        }
        
        private func factoryLayout() -> UICollectionViewLayout {
            let flowLayout = UICollectionViewFlowLayout()
            return flowLayout
        }
        
        private func setupConstraints() {
            titleLabel.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.leading.trailing.equalToSuperview()
            }
            
            collectionView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
        }
    }
}

