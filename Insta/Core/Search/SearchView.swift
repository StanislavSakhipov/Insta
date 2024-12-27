//
//  SearchView.swift
//  Insta
//
//  Created by Stanislav Sakhipov on 12/27/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0 ... 15, id: \ .self) {user in
                        HStack {
                            Image("newcastle")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("Name")
                                    .fontWeight(.semibold)
                                
                                Text("Surname")
                                
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search ...")
            }
            
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
