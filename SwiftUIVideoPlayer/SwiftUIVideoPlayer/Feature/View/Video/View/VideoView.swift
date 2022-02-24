 //
 //  VideoView.swift
 //  SwiftUIVideoPlayer
 //
 //  Created by mehmet karanlık on 24.02.2022.
 //

import SwiftUI
import AVKit

struct VideoView: View {
 var video : Video?
 @State private var player = AVPlayer()
 var body: some View {
  VideoPlayer(player: player)
   .edgesIgnoringSafeArea(.all)
   .onAppear {
    if let link = video?.videoFiles.first?.link {
     player = AVPlayer(url:URL(string: link)!)
     player.play()
    }
   }
 }
}

struct VideoView_Previews: PreviewProvider {
 static var previews: some View {
  VideoView(video: nil)
 }
}
