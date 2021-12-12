//
//  CreationTweetView.swift
//  TwitterClone
//
//  Created by Elliot knight on 12/12/2021.
//

import SwiftUI

struct CreationTweetView: View {
    let tweet: Tweet
    @State var tweetTextEntry: String = ""
    var body: some View {
        HStack() {
        Image(tweet.profilePicture)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 50)
            TextField("Quoi de neuf ?", text: $tweetTextEntry)
         Spacer()
        }.padding()
    }
}

struct CreationTweetView_Previews: PreviewProvider {
    static var previews: some View {
        CreationTweetView(tweet: tweets[0])
    }
}
