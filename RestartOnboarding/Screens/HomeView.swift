//
//  HomeView.swift
//  RestartOnboarding
//
//  Created by Shubham Kumar on 02/05/22.
//

import SwiftUI

struct HomeView: View {
    //MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding = false
    
    //MARK: - Body
    var body: some View {
        VStack {
            Text("Home View")
                .font(.largeTitle)
            
            Button {
                isOnboarding = true
            } label: {
                Text("Restart")
            }

        }// :VStack
    }
}

//MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
