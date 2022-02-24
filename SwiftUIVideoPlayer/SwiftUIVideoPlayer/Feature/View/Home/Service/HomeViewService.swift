//
//  HomeViewService.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 24.02.2022.
//

import Foundation


struct HomeViewService : HomeViewServiceProtocol {

 var networkManager: NetworkHelper

 func getVideos(query: String)  -> VideoModel? {
  var temp : VideoModel?
  let  response =  networkManager.get(networkPath: NetworkPaths.video_search.key+"query=\(query)&per_page=20", model: VideoModel.self )

  if response != nil {
   temp = response
  }
  return temp
 }




}
