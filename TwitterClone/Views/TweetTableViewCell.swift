//
//  TweetTableViewCell.swift
//  TwitterClone
//
//  Created by Aizat Ozbekova on 13/2/25.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    static let identifier = "TweetTableViewCell"
    
    private let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.image = UIImage(systemName: "person")
        imageView.backgroundColor = .blue
        return imageView
    }()
    
    private let displayNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Aizat Ozbekova"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "@aizatozn"
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(displayNameLabel)
        contentView.addSubview(userNameLabel)
        configureConstraints()
    }
    
    private func configureConstraints() {
        let avatarImageViewConstraints = [
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50)
        ]
        
        let displayNameLabelConstraints = [
            displayNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
            displayNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 14)
        ]
        
        let userNameLabelConstraints = [
            userNameLabel.leadingAnchor.constraint(equalTo: displayNameLabel.trailingAnchor, constant: 10),
            userNameLabel.centerYAnchor.constraint(equalTo: displayNameLabel.centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(avatarImageViewConstraints)
        NSLayoutConstraint.activate(displayNameLabelConstraints)
        NSLayoutConstraint.activate(userNameLabelConstraints)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
