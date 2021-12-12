//
//  NewTweetButtonView.swift
//  TwitterClone
//
//  Created by Elliot knight on 12/12/2021.
//

import SwiftUI

struct NewTweetButtonCellView: View {
    var body: some View {
        Button {
            print("Button was pressed!")
        } label: {
            Image(systemName: "plus")
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding()
                .background(Color.blue)
                .clipShape(Circle())
        }
    }
}

struct NewTweetButtonCellView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetButtonCellView()
    }
}
