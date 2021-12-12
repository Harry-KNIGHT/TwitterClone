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
        NavigationView {
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
                            Text(tweet.arobase)
                        }
                        Spacer()
                        Image(systemName: "ellipsis")
                    }
                }
                Text(tweet.tweetContent)
                HStack {
                Text("22: 44 • 11/22/21 •")
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
                HStack(alignment: .center, spacing: 10) {
                    ActionButtonCellView(buttonImageName: "message")
                    ActionButtonCellView(buttonImageName: "return")
                    ActionButtonCellView(buttonImageName: "heart")
                        .padding()
                    ActionButtonCellView(buttonImageName: "square.and.arrow.up")
                }.foregroundColor(.secondary)
                Spacer()
            }.padding(.horizontal)
            .navigationBarTitle("Tweet")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TweetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TweetDetailView(tweet: tweets[0])
    }
}
