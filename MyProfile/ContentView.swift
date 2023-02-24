//
//  ContentView.swift
//  MyProfile
//
//  Created by Anastasia Kotova on 21.02.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                LinearGradient(gradient: Gradient(stops: [
                    Gradient.Stop(color: Color("LightGreen"), location: 0.06),
                    Gradient.Stop(color: Color("DarkBlue"), location: 0.6)
                ]),  startPoint: .leading, endPoint: .trailing).ignoresSafeArea()
                LinearGradient(gradient: Gradient(stops: [
                    Gradient.Stop(color: Color("LightGreen"), location: 0.06),
                    Gradient.Stop(color: Color("DarkBlue"), location: 0.6)
                ]),  startPoint: .leading, endPoint: .trailing).ignoresSafeArea()
                Color.white
            }
            VStack(alignment: .center) {
                Spacer()
                VStack(spacing: 20) {
                    Image("myPicture")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: Color("LightGreen"), radius: 5, x: 5, y: 5)
                    Text("Saysetel")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Text("iOS developer | Gamer")
                        .foregroundColor(.white)
                        .font(.body)
                    HStack(spacing: 40) {
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50)
                    .shadow(color: .white, radius: 10, y: 5 )
                }
                Spacer()
                VStack(alignment: .center, spacing: 30) {
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .shadow(color: Color("DarkBlue"), radius: 8, y: 8)
                        .overlay(
                            Text("Follow")
                                .fontWeight(.bold)
                                .foregroundColor(Color("DarkBlue"))
                                .font(.system(size: 30))
                        )
                    HStack(alignment: .center, spacing: 60) {
                        VStack {
                            Text("118")
                                .font(.title)
                                .foregroundColor(Color("DarkBlue"))
                            Text("Reposts")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                        }
                        VStack {
                            Text("245")
                                .font(.title)
                                .foregroundColor(Color("DarkBlue"))
                            Text("Likes")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                        }
                        VStack {
                            Text("45")
                                .font(.title)
                                .foregroundColor(Color("DarkBlue"))
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                        }
                    }
                    Text("About me ")
                        .font(.system(size: 35))
                        .foregroundColor(Color("DarkBlue"))
                    Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.")
                        .font(.system(.body))
                        .foregroundColor(.black)
                        .padding(.horizontal, 20)
                        .lineLimit(3)
                        .opacity(0.7)
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
