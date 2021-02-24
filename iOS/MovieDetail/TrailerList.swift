//
//  TrailerList.swift
//  iOS
//
//  Created by Igor Soares on 24/02/21.
//

import SwiftUI

struct TrailerList: View {
  var trailers: [Trailer]
  
  let screen = UIScreen.main.bounds
  
  var body: some View {
    VStack {
      ForEach(trailers) { trailer in
        VStack(alignment: .leading) {
          
          VideoPreviewImage(imageURL: trailer.thumbnailImageURL, videoURL: trailer.videoURL)
            .frame(width: screen.width)
          
          Text(trailer.name)
            .font(.headline)
        }
        .foregroundColor(.white)
        .padding(.bottom, 10)
      }
    }
  }
}

struct TrailerList_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      TrailerList(trailers: exampleTrailers)
    }
  }
}
