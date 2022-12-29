//
//  QueryTag.swift
//  VideoPlayerSwiftUI
//
//  Created by William Souef on 28/12/2022.
//

import SwiftUI

struct QueryTag: View {
    
    var query : Query
    var isSelected : Bool
    
    var body: some View {
        Text(query.rawValue)
            .foregroundColor(isSelected ? .black : .gray)
            .padding(10)
            .background(.thinMaterial)
            .cornerRadius(30)
    }
}

struct QueryTag_Previews: PreviewProvider {
    static var previews: some View {
        QueryTag(query: Query.ocean, isSelected: true)
    }
}
