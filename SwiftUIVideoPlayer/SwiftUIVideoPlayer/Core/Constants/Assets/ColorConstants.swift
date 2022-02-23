//
//  ColorConstants.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 23.02.2022.
//

import Foundation
import SwiftUI
struct ColorConstants {

 static let shared : ColorConstants = ColorConstants()

 private init () {}

 private func toColor(value : String) -> Color {
  return Color(value)
 }

 var primary : Color  {
  get { toColor(value: "Primary")}
 }

 var primaryVariant : Color {
  get { toColor(value:"PrimaryVariant")}
 }

 var secondaryVariant : Color {
  get { toColor(value:"SecondaryVariant")}
 }

 var secondary : Color {
  get { toColor(value: "Secondary")}
 }

 var backgroundGray : Color {
  Color.gray.opacity(0.5)
 }

 var surface : Color {
  get { toColor(value: "Surface")}
 }




}
