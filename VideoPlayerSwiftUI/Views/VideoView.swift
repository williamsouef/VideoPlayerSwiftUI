//
//  VideoView.swift
//  VideoPlayerSwiftUI
//
//  Created by William Souef on 28/12/2022.
//

import SwiftUI
import AVKit

struct VideoView: View {
    var video: Video
    @State private var player = AVPlayer()

    var body: some View {
        GeometryReader { geometry in
            VideoPlayer(player: player)
                .onAppear {
                    if let link = video.videoFiles.first?.link {
                        player = AVPlayer(url: URL(string: link)!)
                        player.play()
                    }
                }
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width, height: geometry.size.height)
                
        }
        .edgesIgnoringSafeArea(.all)
    }
}



struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(video: previewVideo)
    }
}
