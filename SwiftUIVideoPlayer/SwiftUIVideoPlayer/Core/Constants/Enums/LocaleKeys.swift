//
//  LocaleKeys.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 23.02.2022.
//

import Foundation


enum LocaleKeys : CaseIterable{

 case is_first_login



 var key : String {
  switch self {
   case .is_first_login : return "isFirstLogin"
  }
 }

}
