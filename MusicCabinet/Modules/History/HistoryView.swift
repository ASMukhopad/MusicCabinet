//
//  HistoryView.swift
//  MusicCabinet
//
//  Created by Alexander on 09.01.2023.
//

import UIKit
import SnapKit

extension HistoryViewController {
    final class View: UIView {
        
        let tableView = setup(UITableView()) {
            $0.register(registerClass: Cell.self)
            $0.backgroundColor = .white
            $0.tableFooterView = UIView()
        }
        
        init() {
            super.init(frame: .zero)
            addSubview(tableView)
            setupConstraints()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupConstraints() {
            tableView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
        }
    }
}


