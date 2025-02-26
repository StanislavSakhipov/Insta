//
//  ProfileView.swift
//  Insta
//
//  Created by Stanislav Sakhipov on 12/26/24.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    // header
                    VStack(spacing: 10) {
                        // picture and stats
                        HStack {
                            Image("person1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            HStack(spacing: 8) {
                                UserStatView(value: 2, title: "Posts")
                                
                                UserStatView(value: 12, title: "Followers")
                                
                                UserStatView(value: 23, title: "Following")
                            }
                            .padding(.horizontal)
                            
                        }
                        .padding(.horizontal)
                        //.padding(.bottom, 4)
                        
                        // name and bio
                        
                        VStack(alignment: .leading, spacing: 4){
                            Text("Stanislav Sakhipov")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("iOS Junior")
                                .font(.footnote)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        
                        // action button
                        
                        Button {
                            
                        } label: {
                            Text("Edite profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 360, height: 32)
                                .foregroundStyle(.black)
                                .overlay(RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1))
                        }
                        Divider()
                    }
                    
                    // post grid view
                    LazyVGrid(columns: gridItems) {
                        
                        ForEach(0 ... 15, id: \.self) { index in
                            Image("person1")
                                .resizable()
                                .scaledToFill()
                            
                        }
                        
                        
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
