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
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            HStack {
                Image(tweet.profilePicture)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 50)
                TextField("Quoi de neuf ?", text: $tweetTextEntry)
            }.padding()
            Spacer()
        }.navigationBarItems(leading: Button(action: { self.presentationMode.wrappedValue.dismiss() },
                                               label: {
               Text("Annuler")
           }), trailing: Button(action: {}, label: {
               Text("Tweeter")
                   .bold()
                   .padding(2)
                   .padding(.horizontal, 10)
                   .padding(.vertical, 5)
                   .foregroundColor(.white)
                   .background(Color.blue)
                   .clipShape(RoundedRectangle(cornerRadius: 20.0))
           }))
            .navigationBarBackButtonHidden(true)
    }
}

struct CreationTweetView_Previews: PreviewProvider {
    static var previews: some View {
        CreationTweetView(tweet: tweets[0])
    }
}
