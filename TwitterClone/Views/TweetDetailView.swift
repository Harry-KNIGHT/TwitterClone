//
//  TweetDetailView.swift
//  TwitterClone
//
//  Created by Elliot knight on 12/12/2021.
//

import SwiftUI

struct TweetDetailView: View {

    let tweet: Tweet
    @State private var selectedAction = ActionsInTweet.block
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                HStack {
                    Image(tweet.profilePicture)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 70)
                    HStack {
                        VStack() {
                            Text(tweet.profileName)
                                .bold()
                                .font(.title3)
                            Text(tweet.arobase)
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                                }
                        Spacer()
                        Picker("Actions", selection: $selectedAction) {
                            ForEach(ActionsInTweet.allCases) { action in
                                Text(action.rawValue)
                            
                            }
                        }
                        Spacer()
                       
                    }
                }
                Text(tweet.tweetContent)
                HStack {
                    Text("\(tweet.date.formatted(date: .numeric, time: .shortened)) •")
                        .font(.callout)
                    Text("Twitter for iPhone")
                        .foregroundColor(.blue)
                        .font(.callout)
                }.padding(.top, 1)
                
                Divider()
                HStack {
                    Text("9")
                        .bold()
                    Text("Retweets")
                        .foregroundColor(.secondary)
                        .font(.callout)
                    Text("23")
                        .bold()
                    Text("J'aime")
                        .foregroundColor(.secondary)
                        .font(.callout)
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
        TweetDetailView(tweet: tweets[6])
            .preferredColorScheme(.light)
    }
}
