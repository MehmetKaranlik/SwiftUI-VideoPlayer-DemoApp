//
//  ImageConstants.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 23.02.2022.
//

import Foundation

struct ImageConstants {

 static let shared : ImageConstants = ImageConstants()

 private init () {}

 var appIcon : String  {
  get { toImage(value: "appIcon")}
 }

 private  func toImage(value : String ) -> String {
  return value
 }


}
