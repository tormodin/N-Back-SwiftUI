//
//  IconView.swift
//  N-Back-SwiftUI
//
//  Created by Jonas Willén on 2023-10-03.
//

import SwiftUI

struct IconView: View {
    var body: some View {
        HStack {
            Image(systemName: "eye")
                .imageScale(.large)
            Text("Image")
        }
        .padding()
       
        .foregroundColor(Color.white)
        .background(Color.blue)
        .cornerRadius(40)
        
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
    }
}
