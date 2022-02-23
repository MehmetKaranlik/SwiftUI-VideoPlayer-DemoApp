 //
 //  VideoPreviewCard.swift
 //  SwiftUIVideoPlayer
 //
 //  Created by mehmet karanlık on 23.02.2022.
 //

import SwiftUI

struct VideoPreviewCard: View {


 var body: some View {

   ZStack(alignment: .bottomLeading) {

    AsyncImage(url: URL(string: "")) { image in
     image
      .imageExtension()
    } placeholder: {
     Rectangle()
      .rectangleExtension()
    }
    buildLabel(duration: "32", author: "XYZ")
   }
   .overlay {
    PlayButtonView()
   }



 }


 fileprivate func buildLabel(duration : String, author : String) -> some View {
  return VStack {
   Text(duration + "sec")
   Text(author)
  }
  .padding()
 }
}

struct VideoPreviewCard_Previews: PreviewProvider {
 static var previews: some View {
  VideoPreviewCard()
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
 }
}


extension Rectangle {
 fileprivate func rectangleExtension () -> some View {
  self
   .foregroundColor(ColorConstants.shared.backgroundGray.opacity(0.3))
   .frame(width: 160, height: 250, alignment: .center)
   .cornerRadius(30)
 }
}
