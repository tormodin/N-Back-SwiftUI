//
//  ActionIconView.swift
//  N-Back-SwiftUI
//
//  Created by Jonas Willén on 2023-10-03.
//

import SwiftUI

struct ActionIconView: View {
    @EnvironmentObject var theViewModel : N_Back_SwiftUIVM
    var body: some View {
        VStack(alignment: .center) {
            Text("START GAME").font(.largeTitle)
            HStack(spacing: 30){
                Button {
                    theViewModel.soundClick()
                } label: {
                    SoundIconView()
                }
                Button {
                    theViewModel.imageClick()
                } label: {
                    ImageIconView()
                }
            }
            
        }
    }
}

struct ActionIconView_Previews: PreviewProvider {
    static var previews: some View {
        ActionIconView()
            .environmentObject(N_Back_SwiftUIVM())
    }
}
