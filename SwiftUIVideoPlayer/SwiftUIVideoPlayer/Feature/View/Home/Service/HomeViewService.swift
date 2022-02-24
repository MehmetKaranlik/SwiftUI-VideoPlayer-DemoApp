//
//  HomeViewService.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 24.02.2022.
//

import Foundation
import SwiftUI


struct HomeViewService : HomeViewServiceProtocol {

 var networkManager: NetworkManager

 func getVideos(query: String,completionHandler : @escaping ([Video]) -> Void)  -> Void{
  var temp = [Video]()
   networkManager.get(networkPath: NetworkPaths.video_search.key+"query=\(query)&per_page=20&oriantetion=portrait", model: VideoModel.self) { data in
    temp = data.videos!
   completionHandler(temp)

  }


 }

}
