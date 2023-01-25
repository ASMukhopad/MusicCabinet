//
//  NetworkProvider.swift
//  MusicCabinet
//
//  Created by Alexander on 09.01.2023.
//

import Foundation

final class NetworkProvider {

    let networkClient = NetworkClient()
    
    func fetchData(album: String, completion: @escaping(Result<Albums, Error>) -> Void) {
        networkClient.request(
            endPoint: "search",
            parameters: ["entity": "album",
                         "term": album],
            completion: completion
        )
    }
    func fetchSongs(albumID: String, completion: @escaping(Result<Songs, Error>) -> Void) {
        networkClient.request(
            endPoint: "lookup",
            parameters: ["entity": "song", "id": albumID],
            completion: completion
        )
    }
}
