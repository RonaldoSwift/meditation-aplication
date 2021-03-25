//
//  OnboardingView.swift
//  meditation-aplication
//
//  Created by Ronaldo Andre Vargas Huaman on 22/03/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("Fondo")
                    .resizable()
                VStack{
                    Spacer()
                    Spacer()
                    Image("Logo100")
                        .resizable()
                        .scaledToFit()
                        .frame(height:199)
                    Text("WELCOME")
                        .font(.custom("Alegreya-Bold", fixedSize: 35))
                    Text("Do meditation. Stay focused.")
                        .font(.title3)
                    Text("Live a healthy life.")
                        .font(.title3)
                    Spacer()
                    
                    NavigationLink(
                        destination: MainView(),
                        label: {
                            Text("Login With Email")
                                .foregroundColor(Color.white)
                                .font(.custom("AlegreyaSans-Italic", fixedSize: 30))
                                .padding(10)
                                .frame(width: 300, height: 60)
                                .background(Color("ColorGrenPalido"))
                                .cornerRadius(15.0)
                        })
                    HStack{
                        Text("Dont have an account?")
                            .font(.title3)
                        NavigationLink(
                            destination: SignUpView(),
                            label: {
                                Text("Sing Up")
                                    .font(.title3)
                                    .bold()
                            })
                    }
                    .foregroundColor(Color("ColorGriss"))
                    Spacer()
                }
                .padding()
            }
            .edgesIgnoringSafeArea(.vertical)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
