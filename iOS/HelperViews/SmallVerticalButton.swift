//
//  SmallVerticalButton.swift
//  buildnextflix2
//
//  Created by Igor Soares on 06/01/21.
//

import SwiftUI

struct SmallVerticalButton: View {
  var text: String
  
  var isOnImage: String
  
  var isOffImage: String
  
  var isOn: Bool
  
  var imageName: String {
    return isOn ? isOnImage : isOffImage
  }
  
  var action: (() -> Void)
  
  var body: some View {
    Button(action: {
      action()
    }, label: {
      VStack {
        Image(systemName: imageName)
          .foregroundColor(.white)
        
        Text(text)
          .foregroundColor(.white)
          .font(.system(size: 14))
          .bold()
      }
    })
  }
}

struct SmallVerticalButton_Previews: PreviewProvider {
  static var previews: some View {
    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
      print("Tapped")
    }
  }
}
