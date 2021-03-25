//
//  SignUpView.swift
//  meditation-aplication
//
//  Created by Ronaldo Andre Vargas Huaman on 22/03/21.
//

import SwiftUI

struct SignUpView: View {
    @State var nombre: String = ""
    @State var emailAddress: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack{
            Image("Login")
                .resizable()
            VStack(alignment:.center,spacing: 30){
                Spacer()
                Spacer()
                HStack{
                    Image("ImagenPequeña")
                        .resizable()
                        .frame(width: 43.41, height: 49)
                    Spacer()
                }
                HStack{
                    Text("Sign Up")
                        .font(.custom("Alegreya-Bold", fixedSize: 30))
                    Spacer()
                  }
                HStack{
                    Text("Sign up now for free and start meditating, and explore Medic.")
                    Spacer()
                }
                VStack(spacing:0.2){
                    TextField("Name", text:$nombre)
                    Text("______________________________________")
                    TextField("Email Address", text:$emailAddress)
                    Text("______________________________________")
                    VStack(alignment: .trailing,spacing:0.2){
                        SecureField("Password", text:$password)
                    Text("______________________________________")
                        Button(action: {print("")}, label: {
                        })
                    }
                }
                Spacer()
                VStack(alignment: .center){
                    NavigationLink(
                        destination: MainView(),
                        label: {
                            Text("SIGNUP")
                                .font(.custom("Alegreya-Regular", fixedSize: 30))
                                .padding(10)
                                .frame(width: 300, height: 60)
                                .background(Color("ColorGrenPalido"))
                                .cornerRadius(15.0)
                                .foregroundColor(Color.white)
                        })
                    HStack(){
                        Text("Already have an account?")
                        Button(action: {}, label: {
                            Text("Sign In")
                                .bold()
                        })
                    }
                    Spacer()
                }
              }
             .padding()
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
