//
//  HomeView.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 23.02.2022.
//

import SwiftUI

struct HomeView: View {

 @ObservedObject var viewModel : HomeViewModel = HomeViewModel()






 var body: some View {
  NavigationView {
   ZStack {
       ColorConstants.shared.secondary.ignoresSafeArea()
       ScrollView {
        VStack(alignment: .center) {
         buildTopQuerySlider()
         LazyVGrid(columns:buildColumn(),spacing: 20 ) {
          ForEach(viewModel.videos) { index in
            buildPreviewCard(index)
          }
         }
         .padding()
        }
       }
      }
   .zstackExtensions(viewModel: viewModel)
  }
}

  


 fileprivate func buildColumn() -> [GridItem] {
  return [GridItem(.adaptive(minimum: 160), spacing: 15)]
 }

 fileprivate func buildPreviewCard(_ index: Video) -> some View {
  return NavigationLink {
   VideoView(video: index)
    .navigationBarTitleDisplayMode(.inline)
  } label: {
   VideoPreviewCard(video: index).tag(index.id)
  }
 }

 fileprivate func buildTopQuerySlider() -> some View {
  return ScrollView(.horizontal, showsIndicators: false) {
   HStack {
    ForEach(QueryTags.allCases, id: \.self) { query in
     Button {
      viewModel.selectedQuery = query.rawValue
     } label: {
      QueryTagView(query: query, isSelected: viewModel.selectedQuery == query.rawValue)
     }

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



extension ZStack {
 fileprivate func zstackExtensions (viewModel : HomeViewModel) -> some View {
  self
   .navigationBarHidden(true)
   .overlay(content: {
    if viewModel.isLoading {
     ProgressView()
    }
   })
   .task {
    viewModel.getVideos()
   }
 }
}
