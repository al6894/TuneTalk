//
//  SongCell.swift
//  TuneTalk
//
//  Created by Victoria Nunez on 4/19/23.
//

import UIKit
import Alamofire

class PostCell: UITableViewCell {

    @IBOutlet private weak var usernameLabel: UILabel!
    @IBOutlet private weak var postImageView: UIImageView!
    @IBOutlet private weak var captionLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!

    private var imageDataRequest: DataRequest?

    func configure(with post: Post) {
        // TODO: Pt 1 - Configure Post Cell

    }

    override func prepareForReuse() {
        super.prepareForReuse()
        // TODO: P1 - Cancel image download

    }
}
