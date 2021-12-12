//
//  TweetsView.swift
//  TwitterClone
//
//  Created by Elliot knight on 10/12/2021.
//

import SwiftUI

struct TweetsView: View {
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                List(tweets) { tweet in
                    NavigationLink(destination: TweetDetailView(tweet: tweet)) {
                        HStack(alignment: .top) {
                            Image(tweet.profilePicture)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 50)
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(tweet.profileName)
                                        .bold()
                                    Text(tweet.arobase)
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                }
                                Text(tweet.tweetContent)
                                HStack {
                                    ActionButtonCellView(buttonImageName: "message")
                                    ActionButtonCellView(buttonImageName: "return")
                                    ActionButtonCellView(buttonImageName: "heart")
                                    ActionButtonCellView(buttonImageName: "square.and.arrow.up")
                                }.padding(.top, 0.1)
                            }
                        }
                    }
                }.listStyle(.plain)
                    .navigationBarTitle("Twitter", displayMode: .inline)
                    .labelsHidden()
                    .navigationBarItems(leading: Button(action: {},
                                                        label: {
                        Image("NoneProfilePicture")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 40)
                    }), trailing: Button(action: {}, label: {
                        Image(systemName: "seal")
                    }))
                NewTweetButtonCellView()
                    .padding()
            }
        }
    }
}


struct TweetsView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsView()
    }
}


