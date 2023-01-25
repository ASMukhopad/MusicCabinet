//
//  Album.swift
//  MusicCabinet
//
//  Created by Alexander on 09.01.2023.
//

struct Albums: Decodable {
    let resultCount: Int
    let results: [Album]
}

struct Album: Decodable {
    let collectionId: Int
    let artistName: String
    let collectionName: String
    let artworkUrl100: String
    let trackCount: Int
    let releaseDate: String
}
