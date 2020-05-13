//
//  CardDestination.swift
//  Chili Labs
//
//  Generated by Chigevara on 13/05/2020.
//  Copyright © 2020 Chili Labs. All rights reserved.
//

import UIKit
import MagazineLayout
import Kingfisher

typealias CardDestinationConfigurator = MagazineCellConfigurator<CardDestinationVM, CardDestination>
final class CardDestination: UICollectionViewCell, ConfigurableCell {

    private let imageView: UIImageView = {
        let v = UIImageView()
        v.contentMode = .scaleAspectFill
        v.layer.cornerRadius = 6
        v.clipsToBounds = true
        return v
    }()

    private let titleLabel: UILabel = {
        let l = UILabel(frame: .zero)
        l.bonMotStyle = Typography.Headline4
        l.textColor = .white
        return l
    }()

    private let subtitleLabel: UILabel = {
        let l = UILabel(frame: .zero)
        l.bonMotStyle = Typography.Caption2
        l.textColor = .white
        return l
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.contentView.addSubview(imageView)
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

        self.contentView.addSubview(subtitleLabel)
        subtitleLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.bottom.equalToSuperview().inset(16)
        }

        self.contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.bottom.equalTo(self.subtitleLabel.snp.top)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(item: CardDestinationVM) {
        self.imageView.kf.setImage(with: URL(string: item.imageUrl))
        self.titleLabel.styledText = item.title
        self.subtitleLabel.styledText = item.subtitle
    }
}
