//
//  MovieDetail.swift
//  iOS
//
//  Created by Igor Soares on 21/02/21.
//

import SwiftUI

struct MovieDetail: View {
  var movie: Movie
  
  let screen = UIScreen.main.bounds
  
  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      
      VStack {
        HStack {
          Spacer()
          
          Button(action: {
            // close this view
          }, label: {
            Image(systemName: "xmark.cicle")
              .font(.system(size: 28))
          })
        }
        .padding(.horizontal, 22)
        
        ScrollView(.vertical, showsIndicators: false) {
          VStack {
            StandardHomeMovie(movie: movie)
              .frame(width: screen.width / 2.5)
            
            MovieInfoSubheadline(movie: movie)
            
            if let promotionHeadline = movie.promotionHeadline {
              Text(promotionHeadline)
                .bold()
                .font(.headline)
            }
            
            PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
              // play
            }
            
            CurrentEpisodeInformation(movie: movie)
            
            CastInfo(movie: movie)
            
          }
          .padding(.horizontal, 10)
        }
        
        Spacer()
      }
      .foregroundColor(.white)
    }
  }
}

struct MovieDetail_Previews: PreviewProvider {
  static var previews: some View {
    MovieDetail(movie: exampleMovie2)
  }
}

struct MovieInfoSubheadline: View {
  var movie: Movie
  
  var body: some View {
    HStack(spacing: 20) {
      Image(systemName: "hand.thumbsup.fill")
        .foregroundColor(.white)
      
      Text(String(movie.year))
      
      RatingView(rating: movie.rating)
      
      Text(movie.numberOfSeasonsDisplay)
    }
    .foregroundColor(.gray)
    .padding(.vertical, 6)
  }
}

struct RatingView: View {
  var rating: String
  
  var body: some View {
    ZStack {
      Rectangle()
        .foregroundColor(.gray)
      
      Text(rating)
        .foregroundColor(.white)
        .font(.system(size: 12))
        .bold()
    }
    .frame(width: 50, height: 20)
  }
}

struct CastInfo: View {
  var movie: Movie
  var body: some View {
    VStack(spacing: 3) {
      HStack {
        Text("Cast: \(movie.cast)")
        Spacer()
      }
      
      HStack {
        Text("Creators: \(movie.creators)")
        Spacer()
      }
    }
    .font(.caption)
    .foregroundColor(.gray)
    .padding(.vertical, 10)
  }
}

struct CurrentEpisodeInformation: View {
  var movie: Movie
  
  var body: some View {
    Group {
      HStack {
        Text(movie.episodeInfoDisplay)
          .bold()
        
        Spacer()
      }
      .padding(.vertical, 4)
      
      HStack {
        Text(movie.episodeDescriptionDisplay)
        Spacer()
      }
    }
  }
}
