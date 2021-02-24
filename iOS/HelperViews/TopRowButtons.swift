//
//  TopRowButtons.swift
//  buildnextflix2
//
//  Created by Igor Soares on 10/01/21.
//

import SwiftUI

struct TopRowButtons: View {
  var body: some View {
    HStack {
      Button(action: {
        //
      }, label: {
        Image("netflix_logo")
          .resizable()
          .scaledToFit()
          .frame(width: 50)
      })
      .buttonStyle(PlainButtonStyle())
      
      Spacer()
      
      Button(action: {
        //
      }, label: {
        Text("TV Shows")
      })
      .buttonStyle(PlainButtonStyle())
      
      Spacer()
      
      Button(action: {
        //
      }, label: {
        Text("Movies")
      })
      .buttonStyle(PlainButtonStyle())
      
      Spacer()
      
      Button(action: {
        //
      }, label: {
        Text("My List")
      })
      .buttonStyle(PlainButtonStyle())
    }
    .padding(.leading, 10)
    .padding(.trailing, 30)
  }
}

struct TopRowButtons_Previews: PreviewProvider {
  static var previews: some View {
    TopRowButtons()
  }
}
