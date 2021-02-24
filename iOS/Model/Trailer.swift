//
//  Trailer.swift
//  iOS
//
//  Created by Igor Soares on 24/02/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
  var id = UUID().uuidString
  var name: String
  var videoURL: URL
  var thumbnailImageURL: URL
}
