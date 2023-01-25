//
//  Songs.swift
//  MusicCabinet
//
//  Created by Alexander on 09.01.2023.
//

struct Songs: Decodable {
    let results: [Song]
}

struct Song: Decodable {
    let trackCount: Int?
    let trackName: String?
}

