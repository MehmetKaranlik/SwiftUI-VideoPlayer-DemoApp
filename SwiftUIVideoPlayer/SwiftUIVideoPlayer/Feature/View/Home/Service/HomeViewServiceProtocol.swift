//
//  HomeViewServiceProtocol.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 24.02.2022.
//

import Foundation


protocol HomeViewServiceProtocol {
 var networkManager : NetworkHelper { get  }

 func getVideos(query: String)  -> VideoModel?

 }

