//
//  SongCell.swift
//  TuneTalk
//
//  Created by Victoria Nunez on 4/19/23.
//

import UIKit
import Nuke
import Alamofire

class PostCell: UITableViewCell {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with post: Post) {
        // TODO: Pt 1 - Configure Post Cell
        trackNameLabel.text = post.trackName
        artistNameLabel.text = post.artistName
        Nuke.loadImage(with: post.artworkUrl100, into: trackImageView)
    }
}
