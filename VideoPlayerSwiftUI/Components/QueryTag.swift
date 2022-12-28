//
//  QueryTag.swift
//  VideoPlayerSwiftUI
//
//  Created by William Souef on 28/12/2022.
//

import SwiftUI

struct QueryTag: View {
    
    var query : String
    var isSelected : Bool
    
    var body: some View {
        Text(query)
    }
}

struct QueryTag_Previews: PreviewProvider {
    static var previews: some View {
        QueryTag(query: "Mountains", isSelected: true)
    }
}
