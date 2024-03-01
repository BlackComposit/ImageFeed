//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Дмитрий Ивашинин on 15.02.2024.
//

import UIKit

final class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: "ProfilePhoto")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 35
        view.addSubview(imageView)
        
        let aliasLabel = UILabel()
        aliasLabel.translatesAutoresizingMaskIntoConstraints = false
        aliasLabel.text = "Екатерина Новикова"
        aliasLabel.textColor = .ypWhite
        aliasLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        view.addSubview(aliasLabel)
        
        let nicknameLabel = UILabel()
        nicknameLabel.translatesAutoresizingMaskIntoConstraints = false
        nicknameLabel.text = "@ekaterina_nov"
        nicknameLabel.textColor = .ypGray
        nicknameLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        view.addSubview(nicknameLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.text = "Hello, world!"
        descriptionLabel.textColor = .ypWhite
        descriptionLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        view.addSubview(descriptionLabel)
        
        let exitButton = UIButton()
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        exitButton.setImage(UIImage(named: "ExitIcon"), for: .normal)
        view.addSubview(exitButton)
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 70),
            imageView.heightAnchor.constraint(equalToConstant: 70),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            aliasLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            aliasLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            nicknameLabel.topAnchor.constraint(equalTo: aliasLabel.bottomAnchor, constant: 8),
            nicknameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            descriptionLabel.topAnchor.constraint(equalTo: nicknameLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            exitButton.widthAnchor.constraint(equalToConstant: 24),
            exitButton.heightAnchor.constraint(equalToConstant: 24),
            exitButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            exitButton.centerYAnchor.constraint(equalTo: imageView.centerYAnchor)
        ])
    }
}
