//
//  NetworkPaths.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 23.02.2022.
//

import Foundation


enum NetworkPaths : CaseIterable{

 case base_url
 case token
 case video_search



 var key : String {
  switch self {
   case .base_url : return "https://api.pexels.com/v1/"
   case .token : return  "563492ad6f917000010000013ebd5b63aed54579abc1064659b19f0e"
   case .video_search: return "/videos/search?"
  }
 }

}
