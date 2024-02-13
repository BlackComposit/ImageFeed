//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Дмитрий Ивашинин on 06.02.2024.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    static let reuseIdentifier = "ImagesListCell"
}
