//
//  HomeVM.swift
//  buildnextflix2
//
//  Created by Igor Soares on 04/01/21.
//

import Foundation

class HomeVM: ObservableObject {
  
  @Published var movies: [String: [Movie]] = [:]
  
  public var allCategories: [String] {
    return movies.keys.map({ String($0) })
  }
  
  public func getMovie(forCat cat: String) -> [Movie] {
    return movies[cat] ?? []
  }
  
  init() {
    setupMovies()
  }
  
  func setupMovies() {
    movies["Trending Now"] = examplesMovies
    movies["Stand-Up Comedy"] = examplesMovies.shuffled()
    movies["New Releases"] = examplesMovies.shuffled()
    movies["Watch It Again"] = examplesMovies.shuffled()
    movies["Sci"] = examplesMovies.shuffled()
  }
}
