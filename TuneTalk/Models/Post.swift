//
//  Post.swift
//  TuneTalk
//
//  Created by Victoria Nunez on 4/19/23.
//

import Foundation

// TODO: Pt 1 - Import Parse Swift

struct PostAPIResponse: Decodable {
    let results : [Post]
}

struct Post : Decodable {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL

    // Detail properties
//    let collectionName: String
//    let primaryGenreName: String
//    let releaseDate: Date
}
