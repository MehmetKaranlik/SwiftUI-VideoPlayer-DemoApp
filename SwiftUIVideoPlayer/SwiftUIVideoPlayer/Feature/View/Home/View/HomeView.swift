//
//  HomeView.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 23.02.2022.
//

import SwiftUI

struct HomeView: View {


 var body: some View {
     ZStack {
      ColorConstants.shared.secondary.ignoresSafeArea()
      VStack {
       buildTopQuerySlider()
       Spacer()
       
      }
     }
    }




 fileprivate func buildTopQuerySlider() -> some View {
  return ScrollView(.horizontal, showsIndicators: false) {
   HStack {
    ForEach(QueryTags.allCases, id: \.self) { query in
     QueryTagView(query: query, isSelected: .random())
    }
   }
  }
 }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}