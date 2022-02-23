 //
 //  PlayButtonView.swift
 //  SwiftUIVideoPlayer
 //
 //  Created by mehmet karanlık on 23.02.2022.
 //

import SwiftUI

struct PlayButtonView: View {
 var body: some View {
  Image(systemName:"play.fill")
   .imageExtension()
  
 }
}

struct PlayButtonView_Previews: PreviewProvider {
 static var previews: some View {
  PlayButtonView()
   .previewLayout(.sizeThatFits)
 }
}



extension Image {
 fileprivate func imageExtension () -> some View {
  self
   .foregroundColor(.white)
   .font(.title2)
   .padding()
   .background(.ultraThinMaterial)
   .cornerRadius(.infinity)
 }
}
