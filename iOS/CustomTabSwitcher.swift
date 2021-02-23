//
//  CustomTabSwitcher.swift
//  iOS
//
//  Created by Igor Soares on 22/02/21.
//

import SwiftUI

struct CustomTabSwitcher: View {
  
  @State private var currentTab: CustomTab = .episodes
  
  var tabs: [CustomTab]
  
  func widthForTab(_ tab: CustomTab) -> CGFloat {
    let string = tab.rawValue
    return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
  }
  
  var body: some View {
    VStack {
      
      ScrollView(.horizontal, showsIndicators: false) {
        
        HStack {
          
          ForEach(tabs, id: \.self) { tab in
            
            VStack {
              
              Rectangle()
                .frame(width: widthForTab(tab), height: 6)
                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
              
              Button(action: {
                currentTab = tab
              }, label: {
                Text(tab.rawValue)
                  .font(.system(size: 16, weight: .bold))
                  .foregroundColor(tab == currentTab ? Color.white : Color.gray)
              })
              .buttonStyle(PlainButtonStyle())
              .frame(width: widthForTab(tab), height: 30)
            }
          }
        }
      }
      
      switch currentTab {
      case .episodes:
        
        SmallVerticalButton(text: "TEST",
                            isOnImage: "",
                            isOffImage: "",
                            isOn: true) {
          //
        }
        
      case .trailers:
        Text("trailers")
      case .more:
        Text("more")
      }
    }
    .foregroundColor(.white)
  }
}

enum CustomTab: String {
  case episodes = "EPISODES"
  case trailers = "TRAILERS & MORE"
  case more = "MORE LIKE THIS"
}


struct CustomTabSwitcher_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
    }
  }
}
