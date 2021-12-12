//
//  NewTweetButtonView.swift
//  TwitterClone
//
//  Created by Elliot knight on 12/12/2021.
//

import SwiftUI

struct NewTweetButtonCellView: View {
    let tweet: Tweet
    var body: some View {
//        Button {
//            print("Button was pressed!")
//        } label: {
//            Image(systemName: "plus")
//                .foregroundColor(.white)
//                .font(.largeTitle)
//                .padding()
//                .background(Color.blue)
//                .clipShape(Circle())
//        }
        NavigationLink (destination: CreationTweetView(tweet: tweet)) {
            Image(systemName: "plus")
                .font(.title)
                .padding()
                .background(Color.blue)
                .clipShape(Circle())
            //  .frame(width: 20, height: 20)
                .foregroundColor(.white)
  
        }
    }
}

struct NewTweetButtonCellView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetButtonCellView(tweet: tweets[0])
    }
}
