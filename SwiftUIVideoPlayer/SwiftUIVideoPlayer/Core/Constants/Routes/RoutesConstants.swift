 //
 //  RoutesConstant.swift
 //  SKS-iOS
 //
 //  Created by mehmet karanlık on 23.02.2022.
 //

import Foundation

enum Routes : CaseIterable  {
 case home


 var route : String {

  switch self {
   case .home : return "/home"
  }
 }
}
