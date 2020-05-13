//
//  RowHeadline1.swift
//  Chili Labs
//
//  Generated by Chigevara on 12/05/2020.
//  Copyright © 2020 Chili Labs. All rights reserved.
//

import UIKit
import MagazineLayout
import SnapKit
import BonMot

typealias RowHeadline1Configurator = MagazineCellConfigurator<RowHeadline1VM, RowHeadline1>
final class RowHeadline1: MagazineLayoutCollectionViewCell, ConfigurableCell {

    private let textLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.bonMotStyle = Typography.Headline1
        label.numberOfLines = 0
        label.textColor = .mainText
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.contentView.addSubview(textLabel)
        textLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.bottom.equalToSuperview().inset(8)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(item: RowHeadline1VM) {
        self.textLabel.styledText = item.title
    }
}
