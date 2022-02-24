//
//  HomeViewModel.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 24.02.2022.
//

import Foundation

class HomeViewModel : ObservableObject {

 private var service : HomeViewServiceProtocol

 @Published var videos: [Video]?

  init() {
  service = HomeViewService(networkManager: NetworkHelper.shared)
   }

 

 func getVideos() -> Void {
  let data = service.getVideos(query: QueryTags.animals.rawValue)
  if !(data?.videos?.isEmpty ?? false) {
   videos = data?.videos
   print(videos?.count)
  }
 }


}
