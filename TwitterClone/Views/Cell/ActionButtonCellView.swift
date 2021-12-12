//
//  ActionButtonCellView.swift
//  TwitterClone
//
//  Created by Elliot knight on 12/12/2021.
//

import SwiftUI

struct ActionButtonCellView: View {
    
    var buttonImageName: String
    
    var body: some View {
        Button(action: {}, label: { Image(systemName: buttonImageName)})
            .padding(.horizontal)
            .padding(.horizontal, -10)
    }
}

struct ActionButtonCellView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonCellView(buttonImageName: "plus")
    }
}
