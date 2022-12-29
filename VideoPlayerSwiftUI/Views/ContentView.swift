//
//  ContentView.swift
//  VideoPlayerSwiftUI
//
//  Created by William Souef on 28/12/2022.
//

import SwiftUI

struct ContentView: View {
    
   @StateObject var videoManager = VideoManager()
    
    var colums = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    ForEach(Query.allCases, id: \.self) { index in
                        QueryTag(query: index, isSelected: videoManager.selectedQuery == index)
                            .onTapGesture {
                                videoManager.selectedQuery = index
                            }
                    }
                }
                ScrollView{
                    
                    if videoManager.videos.isEmpty{
                        ProgressView()
                    } else {
                        LazyVGrid(columns: colums,spacing: 20) {
                            ForEach(videoManager.videos, id: \.id) { video in
                                
                                NavigationLink{
                                    VideoView(video: video)
                                } label : {
                                VideoCard(video: video)                    }
                           
                            }
                            .frame(maxWidth: .infinity)
                        }
                        
                    }
   
            }
            .background(Color("AccentColor"))
            .navigationBarHidden(true)
            }
        }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
