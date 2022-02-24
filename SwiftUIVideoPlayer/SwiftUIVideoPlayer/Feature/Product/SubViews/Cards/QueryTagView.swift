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
      .textExtension(isSelected: self.isSelected)

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
 fileprivate func textExtension (isSelected : Bool) -> some View {
  self
   .foregroundColor(ColorConstants.shared.surface)
   .padding(.horizontal)
   .padding(.vertical,5)
   .background(.ultraThickMaterial)
   .opacity(isSelected ? 1 : 0.7)
   .cornerRadius(10)
 }
}


