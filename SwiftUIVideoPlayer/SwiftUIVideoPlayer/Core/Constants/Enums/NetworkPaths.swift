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
   case .token : return  "**********"
   case .video_search: return "/videos/search?"
  }
 }

}
