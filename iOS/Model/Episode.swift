//
//  Episode.swift
//  iOS
//
//  Created by Igor Soares on 21/02/21.
//

import Foundation

struct Episode: Identifiable {
  var id = UUID().uuidString
  
  var name: String
  var season: Int
  var episodeNumber: Int
  var thumbnailImageURLString: String
  var description: String
  var length: Int
  
  var videoURL: URL
  
  var thumbnailURL: URL {
    return URL(string: thumbnailImageURLString)!
  }
}
