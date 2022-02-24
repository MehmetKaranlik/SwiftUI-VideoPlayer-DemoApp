//
//  HomeViewModel.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 24.02.2022.
//

import Foundation

class HomeViewModel : ObservableObject {

 private var service : HomeViewServiceProtocol

 @Published var videos = [Video]()
 @Published var selectedQuery : String = QueryTags.animals.rawValue {
  didSet {
   Task {
    getVideos()
   }
  }
 }
 @Published var isLoading : Bool = false

  init() {
  service = HomeViewService(networkManager: NetworkManager.shared)
   }

 


 // call to get videos
 func getVideos() -> Void {
  videos.removeAll()
  self.isLoading.toggle()
  service.getVideos(query:  selectedQuery) { videos in
   self.videos = videos
   self.isLoading.toggle()
  }
 }
}
