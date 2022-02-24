//
//  HomeViewServiceProtocol.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 24.02.2022.
//

import Foundation


protocol HomeViewServiceProtocol {
 var networkManager : NetworkManager { get  }

 func getVideos(query: String, completionHandler : @escaping ([Video]) -> Void)  -> Void

 }

