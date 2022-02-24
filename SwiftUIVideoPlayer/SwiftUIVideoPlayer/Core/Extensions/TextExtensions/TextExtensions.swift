//
//  TextExtensions.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 24.02.2022.
//

import Foundation
import SwiftUI



extension String {

  func trimToLength (length: Int) -> String {
  return String(self.prefix(length))
 }

}
