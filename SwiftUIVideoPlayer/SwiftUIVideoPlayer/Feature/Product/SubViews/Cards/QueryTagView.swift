//
//  QueryTagView.swift
//  SwiftUIVideoPlayer
//
//  Created by mehmet karanlık on 23.02.2022.
//

import SwiftUI

struct QueryTagView: View {
 let query : QueryTags
 var isSelected : Bool
    var body: some View {
     Text(query.rawValue)
      .textExtension()

    }
}

struct QueryTagView_Previews: PreviewProvider {
    static var previews: some View {
     QueryTagView(query: .animals, isSelected: .random())
      .previewLayout(.sizeThatFits)
      .padding()

    }
}




extension Text {
fileprivate func textExtension () -> some View {
  self
   .foregroundColor(ColorConstants.shared.surface)
   .padding(.horizontal)
   .padding(.vertical,5)
   .background(.ultraThickMaterial)
   .cornerRadius(10)
 }
}


