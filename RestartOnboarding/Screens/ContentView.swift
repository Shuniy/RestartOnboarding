//
//  ContentView.swift
//  RestartOnboarding
//
//  Created by Shubham Kumar on 02/05/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    //MARK: - Body
    var body: some View {
        ZStack {
            if isOnboarding {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
