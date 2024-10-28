//
//  LearnerViewModel.swift
//  Learning journey
//
//  Created by Nujud Alotaibi on 26/04/1446 AH.
//

import SwiftUI
import Combine

class LearnerViewModel: ObservableObject {
    
    //1
    @Published var learningModel: LearningModel
    @Published var navigateToHome: Bool = false
    
    init() {
        self.learningModel = LearningModel(title: "", selectedOption: "Month")
    }
    
    func updateLearningOption(option: String) {
        learningModel.selectedOption = option
    }
    
    func startLearning() {
        navigateToHome = true
    }
    //2
}
