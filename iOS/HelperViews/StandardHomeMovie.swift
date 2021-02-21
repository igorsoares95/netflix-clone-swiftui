//
//  StandardHomeMovie.swift
//  buildnextflix2
//
//  Created by Igor Soares on 04/01/21.
//

import Kingfisher
import SwiftUI

struct StandardHomeMovie: View {
  var movie: Movie
  
    var body: some View {
      KFImage(movie.thumbnailURL)
        .resizable()
        .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
      StandardHomeMovie(movie: exampleMovie1)
    }
}
