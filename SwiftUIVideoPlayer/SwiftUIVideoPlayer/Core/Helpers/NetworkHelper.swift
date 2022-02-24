//
//  NetworkHelper.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 23.02.2022.
//

import Foundation
import UIKit

enum Errors : Error {
 case bad_url
}

struct NetworkHelper {

 static let shared : NetworkHelper = NetworkHelper()

 private init() {}

 func get<T: Codable>(networkPath: String, model : T.Type)  -> T? {
  var temp : T?
  guard let url : URL = URL(string: NetworkPaths.base_url.key + networkPath) else {fatalError()}
  var request = URLRequest(url: url)
  request.addValue(NetworkPaths.token.key, forHTTPHeaderField: "Authorization")
  let dataTask =  URLSession.shared.dataTask(with: request) { data, response, error in
   if let err = error {
    print("Request Error : \(err)")
    return
   }
   guard let response = response as? HTTPURLResponse else {return}
   if response.statusCode == 200 {
    guard let rawJson = data else {return}
    DispatchQueue.main.async {
     do {
      let decodedData = try JSONDecoder().decode(T.self, from: rawJson)
      print(decodedData)
      temp = decodedData
     }
     catch {
      print("Json serialization error : \(error)")
     }
    }
   } // end of if
  } // end of data task

  dataTask.resume()
  return temp ?? nil

 }

}
