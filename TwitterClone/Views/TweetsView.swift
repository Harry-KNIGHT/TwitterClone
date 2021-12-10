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
            List(tweets) { tweet in
                HStack(alignment: .top) {
                    Image(tweet.profilePicture)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 45)
                    VStack(alignment: .leading) {
                        HStack {
                            Text(tweet.profileName)
                                .bold()
                            Text(tweet.arobase)
                        }
                        Text(tweet.tweetContent)
                    }
                }
            }.listStyle(.plain)
                .navigationBarTitle("Twitter", displayMode: .inline)
                .navigationBarItems(leading: Button(action: {},
                                                    label: { Image("NoneProfilePicture")
                    
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 40)
                }), trailing: Button(action: {}, label: {
                    Image(systemName: "seal")
                }))
        }
    }
}

struct TweetsView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsView()
    }
}
