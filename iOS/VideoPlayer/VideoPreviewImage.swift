//
//  VideoPreviewImage.swift
//  iOS
//
//  Created by Igor Soares on 24/02/21.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImage: View {
  var imageURL: URL
  var videoURL: URL
  
  @State private var showingVideoPlayer = false
  
  var body: some View {
    ZStack {
      KFImage(imageURL)
        .resizable()
        .aspectRatio(contentMode: .fit)
      
      Button(action: {
        showingVideoPlayer = true
      }, label: {
        Image(systemName: "play.circle")
          .foregroundColor(.white)
          .font(.system(size: 40))
      })
      .sheet(isPresented: $showingVideoPlayer, content: {
        SwiftUIVideoView(url: videoURL)
      })
    }
  }
}

struct VideoPreviewImage_Previews: PreviewProvider {
  static var previews: some View {
    VideoPreviewImage(imageURL: exampleImageURL, videoURL: exampleVideoURL)
  }
}
