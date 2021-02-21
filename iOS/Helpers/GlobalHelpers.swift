//
//  GlobalHelpers.swift
//  buildnextflix2
//
//  Created by Igor Soares on 04/01/21.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exiting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeasons: 1,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Skeelo",
                          cast: "player")

let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Travelers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exiting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 2,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Skeelo",
                          cast: "player",
                          promotionHeadline: "Best Rated Show")

let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Community",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exiting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 3,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Skeelo",
                          cast: "player")

let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exiting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 4,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Skeelo",
                          cast: "player",
                          promotionHeadline: "New episodes coming soon")

let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exiting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 5,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Skeelo",
                          cast: "player")

let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "After life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Dystopian", "Exiting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Skeelo",
                          cast: "player",
                          promotionHeadline: "Watch Season 6 Now")

let examplesMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "fdshgfvdsjghfvdgu",
                                             description: "fsdiyvfughdsfvuhdsfvugdcfyfcsghjdasfygdfasjhdfjghasdgjkaschgasgfdjhasdfguaffd",
                                             season: 2, episode: 20)

extension LinearGradient {
  static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]),
                                                   startPoint: .top,
                                                   endPoint: .bottom)
}
