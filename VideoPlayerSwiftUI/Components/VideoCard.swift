//
//  VideoCard.swift
//  VideoPlayerSwiftUI
//
//  Created by William Souef on 28/12/2022.
//

import SwiftUI

struct VideoCard: View {
    
  var video : Video
    var body: some View {
        
        ZStack {
            ZStack(alignment: .bottomLeading) {
                
                AsyncImage(url: URL(string: video.image)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 160, height: 250, alignment: .center)
                        .cornerRadius(10)
                    
                } placeholder: {
                    Rectangle()
                        .foregroundColor(Color.gray.opacity(0.3))
                        .frame(width: 160, height: 250, alignment: .center)
                        .cornerRadius(10)
                }
                VStack(alignment: .leading) {
                    
                    Text("\(video.duration)sec")
                        .font(.caption)
                        .bold()
                    Text("By \(video.user.name)")
                        .font(.caption)
                        .bold()
                        .multilineTextAlignment(.leading)
                }
                .padding()
                .foregroundColor(.white)
                .shadow( radius: 20)
            }
            
            Image(systemName: "play.fill")
                .foregroundColor(.white)
                .font(.title)
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(50)
        }
    }
}

struct VideoCard_Previews: PreviewProvider {
    static var previews: some View {
        VideoCard(video: previewVideo)
    }
}
