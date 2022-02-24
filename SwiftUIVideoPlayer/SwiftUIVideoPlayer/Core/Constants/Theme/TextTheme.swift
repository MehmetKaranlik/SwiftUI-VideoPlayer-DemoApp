//
//  TextTheme.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 23.02.2022.
//

import Foundation
import SwiftUI

struct TextTheme {

 static let shared : TextTheme = TextTheme()
 private init() {}

 var header1 : Font {
  get { toFont(value: "HALVETICA", size: 25)}
 }


 private  func toFont(value: String, size : CGFloat) -> Font {
  return .custom(value, size: size)
 }
}
