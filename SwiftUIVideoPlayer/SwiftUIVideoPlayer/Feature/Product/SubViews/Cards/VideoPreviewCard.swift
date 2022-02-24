 //
 //  VideoPreviewCard.swift
 //  SwiftUIVideoPlayer
 //
 //  Created by mehmet karanlık on 23.02.2022.
 //

import SwiftUI

struct VideoPreviewCard: View {
 let video : Video?
 var body: some View {
  ZStack(alignment: .bottomLeading) {
   AsyncImage(url: URL(string: video?.image ?? "")) { image in
    image
     .imageExtension()
   } placeholder: {
    Rectangle()
     .rectangleExtension()
   }
   buildLabel(duration: video?.duration.description ?? "0", author: video?.user.name ?? "")
  }




 }


 fileprivate func buildLabel(duration : String, author : String) -> some View {
  return VStack(alignment:.leading,spacing: 5) {

   Text(duration + "sec")
    .bold()

   Text(author.trimToLength(length: 10))
    .bold()


  }
  .foregroundColor(.white)
  .padding()

 }
}

struct VideoPreviewCard_Previews: PreviewProvider {
 static var previews: some View {
  VideoPreviewCard(video: nil)
   .previewLayout(.sizeThatFits)
 }
}



extension Image {
 fileprivate func imageExtension () -> some View {
  self
   .resizable()
   .aspectRatio(contentMode: .fill)
   .frame(width: 160, height: 250, alignment: .center)
   .cornerRadius(30)
   .overlay {
    PlayButtonView()
   }
 }
}


extension Rectangle {
 fileprivate func rectangleExtension () -> some View {
  self
   .foregroundColor(ColorConstants.shared.backgroundGray.opacity(0.3))
   .frame(width: 160, height: 250, alignment: .center)
   .cornerRadius(30)
   .overlay {
    ProgressView()
   }
 }
}
