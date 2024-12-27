//
//  FeedView.swift
//  Insta
//
//  Created by Stanislav Sakhipov on 12/27/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(0 ... 10, id: \.self) { post in
                        FeedCell()}
                }
            }
            .padding(.top, 8)
        
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading)  {
                    Image("2123")
                        .resizable()
                        .frame(width: 100, height: 50)
                }
                
                ToolbarItem(placement: .navigationBarTrailing)  {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}


#Preview {
    FeedView()
}
