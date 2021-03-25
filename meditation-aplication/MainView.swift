//
//  MainView.swift
//  meditation-aplication
//
//  Created by Ronaldo Andre Vargas Huaman on 24/03/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            Image("Main")
                .resizable()
            VStack(spacing: 20){
                Spacer()
                
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
                        Image("UsuarioImage")
                            .resizable()
                            .frame(width: 35, height: 35)
                    })
                }
                .foregroundColor(Color("VerdePlanta"))
                
                HStack{
                VStack(alignment: .leading){
                Text("Welcome back, Afreen!")
                    .font(.custom("Alegreya-Regular", fixedSize: 26))
                Text("How are you feeling today?")
                    .foregroundColor(Color("ColorBlancoGris"))
            }
                    Spacer()
                }
                
                HStack(spacing: 35){
                    Image("Calm")
                        .resizable()
                        .frame(width: 62, height: 84)
                    Image("Relax")
                        .resizable()
                        .frame(width: 62, height: 84)
                    Image("Focus")
                        .resizable()
                        .frame(width: 62, height: 84)
                    Image("Anxious")
                        .resizable()
                        .frame(width: 62, height: 84)
                }
                
                ZStack{
                    HStack{
                        VStack{
                            Text("Meditation 101")
                                .font(.custom("Alegreya-Regular", fixedSize: 23))
                                .foregroundColor(Color.black)
                            Text("Techniques, Benefits, and a Beginners How-To")
                                .foregroundColor(Color.black)
                            HStack{
                                Button(action: {}, label: {
                                    Text("Watch now")
                                        .foregroundColor(Color.white)
                                })
                                Image("Group")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                            }
                            .padding()
                            .background(Color("VerdePlanta"))
                            .cornerRadius(10.0)
                            .frame(width: 140, height: 50)
                            
                        }
                        Image("NiñaSentada")
                            .resizable()
                            .frame(width: 166, height: 111)
                    }
                    .padding()
                }
                .background(Color.white)
                .cornerRadius(20.0)

                ZStack{
                    HStack{
                        VStack{
                            Text("Cardio Meditation")
                                .font(.custom("Alegreya-Regular", fixedSize: 23))
                                .foregroundColor(Color.black)
                            Text("Basics of Yoga for Beginners or Experienced Professionals")
                                .foregroundColor(Color.black)
                            HStack{
                                Button(action: {}, label: {
                                    Text("Watch now")
                                        .foregroundColor(Color.white)
                                })
                                Image("Group")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                            }
                            .padding()
                            .background(Color("VerdePlanta"))
                            .cornerRadius(10.0)
                            .frame(width: 140, height: 50)
                            
                        }
                        Image("Love")
                            .resizable()
                            .frame(width: 129, height: 129)
                    }
                    .padding()
                }
                .background(Color.white)
                .cornerRadius(20.0)
                
                HStack(spacing: 90){
                    NavigationLink(
                        destination: MainView(),
                        label: {
                            Image("ImagenPequeña")
                                .resizable()
                                .frame(width: 30.78, height: 30)
                        })
                    
                    NavigationLink(
                        destination: SoundsView(),
                        label: {
                            Image("Sounds")
                                .resizable()
                                .frame(width: 21.54, height: 20)
                        })
                    
                    NavigationLink(
                        destination: ProfileView(),
                        label: {
                            Image("Profile")
                                .resizable()
                                .frame(width: 15.75, height: 20)
                        })
                }
                Spacer()
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
