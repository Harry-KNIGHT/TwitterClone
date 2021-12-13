//
//  TweetDetailView.swift
//  TwitterClone
//
//  Created by Elliot knight on 12/12/2021.
//

import SwiftUI

struct TweetDetailView: View {
    
    let tweet: Tweet
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(tweet.profilePicture)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 70)
                    HStack {
                        VStack(alignment: .leading) {
                            Text(tweet.profileName)
                                .bold()
                                .font(.title2)
                            Text(tweet.arobase)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Image(systemName: "ellipsis")
                    }
                }
                Text(tweet.tweetContent)
                HStack {
                    Text("\(tweet.date.formatted(date: .numeric, time: .shortened)) •")
                    Text("Twitter for iPhone")
                        .foregroundColor(.blue)
                }.padding(.top, 1)
                
                Divider()
                HStack {
                    Text("9")
                        .bold()
                    Text("Retweets")
                        .foregroundColor(.secondary)
                    Text("23")
                        .bold()
                    Text("J'aime")
                        .foregroundColor(.secondary)
                }
                Divider()
                VStack(alignment: .center) {
                    HStack(alignment: .center, spacing: 45) {
                        ActionButtonCellView(buttonImageName: "message")
                        ActionButtonCellView(buttonImageName: "return")
                        ActionButtonCellView(buttonImageName: "heart")
                        ActionButtonCellView(buttonImageName: "square.and.arrow.up")
                    }.font(.system(size: 20))
                    .foregroundColor(.secondary)
                    .padding(.vertical, 5)
                    Divider()
                    Spacer()
                }
            }.navigationTitle("Tweet")
                .navigationBarTitleDisplayMode(.inline)
                
        }.padding()
    }
    
    
}


struct TweetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TweetDetailView(tweet: tweets[0])
            .preferredColorScheme(.light)
    }
}
