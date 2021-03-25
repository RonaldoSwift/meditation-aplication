//
//  ProfileView.swift
//  meditation-aplication
//
//  Created by Ronaldo Andre Vargas Huaman on 24/03/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Image("Main")
                .resizable()
            VStack(spacing:40){
                
                HStack(spacing: 120){
                    Button(action: {}, label: {
                        Image("Hamburger")
                            .resizable()
                            .frame(width: 22, height: 18)
                    })
                    Button(action: {}, label: {
                        Image("ImagenPequeña")
                            .resizable()
                            .frame(width: 43.41, height: 49)
                    })
                    Button(action: {}, label: {
                        Text("edit")
                            .frame(width: 35, height: 35)
                    })
                }
                
                VStack{
                    Image("ProfilePic")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Text("Afreen Khan")
                        .bold()
                        .font(.custom("Alegreya-Regular", fixedSize: 26))
                    Text("Lucknow, India")
                }
                
                VStack(spacing: 50){
                    Image("Achievements")
                        .resizable()
                        .frame(height: 30)
                    Image("Stats")
                        .resizable()
                        .frame(width: 295, height: 221)
                }
                
                HStack(spacing: 100){
                    
                    NavigationLink(
                        destination: MainView(),
                        label: {
                            Image("Home")
                                .resizable()
                                .frame(width: 27.54, height: 27)
                        })
                    NavigationLink(
                        destination: SoundsView(),
                        label: {
                            Image("Sounds")
                                .resizable()
                                .frame(width: 25.54, height: 24)
                        })
                    Button(action: {}, label: {
                        Image("User")
                            .resizable()
                            .frame(width: 24.78, height: 30)
                    })
                }
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
