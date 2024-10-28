//
//  UpdateViewModel.swift
//  Learning journey
//
//  Created by Nujud Alotaibi on 26/04/1446 AH.
//

import SwiftUI

class UpdateViewModel: ObservableObject {
    @Published var learningGoal: LearningGoalModel
    @Published var navigateToHome: Bool = false  // Navigation control

    init() {
        self.learningGoal = LearningGoalModel(learning: "", selectedOption: "Month")
    }
    
    func updateLearningGoal(_ newLearning: String) {
        learningGoal.learning = newLearning
    }
    
    func updateSelectedOption(_ option: String) {
        learningGoal.selectedOption = option
    }
    
    func startLearning() {
        navigateToHome = true
    }
    
    
}
