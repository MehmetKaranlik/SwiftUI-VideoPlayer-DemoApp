 //
 //  LocaleManager.swift
 //  SKS-iOS
 //
 //  Created by mehmet karanlık on 23.02.2022.
 //

import Foundation


struct LocaleManager {

 static let shared : LocaleManager = LocaleManager()

 let defaults : UserDefaults
 private init() {
  defaults = UserDefaults.standard
 }


 func clearAllCaches() -> Void {
  if let bundleID = Bundle.main.bundleIdentifier {
   UserDefaults.standard.removePersistentDomain(forName: bundleID)
   sync()
   print("Cache Cleared")
  }
 }



  // Getters


 func getStringValue(key: LocaleKeys) -> String {
  let temp : String? = defaults.string(forKey: key.key)
  if let value = temp {
   return value
  }else {
   return ""
  }
 }

 func getIntValue(key: LocaleKeys) -> Int {
  let temp : Int? = defaults.integer(forKey: key.key)
  if let value = temp {
   return value
  }
 }


 func getBoolValue(key: LocaleKeys) -> Bool {
  let temp : Bool? = defaults.bool(forKey: key.key)
  if let value = temp {
   return value
  }
 }



  // Setters
 func setStringValue(key : LocaleKeys, value : String) {
  defaults.set(value, forKey: key.key)
 }

 func setIntValue(key : LocaleKeys, value : Int) {
  defaults.set(value, forKey: key.key)
 }

 func setBoolValue(key : LocaleKeys, value : Bool) {
  defaults.set(value, forKey: key.key)
 }









}
