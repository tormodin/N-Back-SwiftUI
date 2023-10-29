//
//  N_Back_SwiftUIVM.swift
//  N-Back-SwiftUI
//
//  Created by Jonas Willén on 2023-09-19.
//

import Foundation
import AVFoundation

class N_Back_SwiftUIVM : ObservableObject  {
    let synthesizer = AVSpeechSynthesizer()
    var theModel : N_BackSwiftUIModel
    @Published var highScore : Int
    
    init(){
        theModel = N_BackSwiftUIModel(count: 0)
        highScore = theModel.getHighScore()
    }
    
    func newHighScoreValue(){
        theModel.addScore()
        highScore = theModel.getHighScore()
    }
    
    
    func soundClick(){
        let theString: String = theModel.getString()
        speech(aString: theString)
    }
    
    func imageClick(){
        theModel.resetNback()
    }
    
    
    // IO handling
    
    func speech(aString: String){
        let soundVoice = AVSpeechUtterance(string: aString)
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate )
        synthesizer.speak(soundVoice)
    }
    
}






