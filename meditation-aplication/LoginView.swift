//
//  LoginView.swift
//  meditation-aplication
//
//  Created by Ronaldo Andre Vargas Huaman on 22/03/21.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView{
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
                Text("Sign In ")
                    .font(.custom("Alegreya-Bold", fixedSize: 30))
                    Spacer()
                }
                HStack{
                Text("Sign in now to acces your exercises and saved music")
                    Spacer()
                }
                VStack(spacing:0.2){
                    TextField("Email Address", text:$username)
                        
                    Text("______________________________________")
                    VStack(alignment: .trailing,spacing:0.2){
                        SecureField("Password", text:$password)
                            
                        Text("______________________________________")
                        Button(action: {print("")}, label: {
                            Text("Forgot Password?")
                                .foregroundColor(Color("ColorBlancoGris"))
                        })
                    }
                }
                Spacer()
                VStack(alignment: .center){
                    NavigationLink(
                        destination: MainView(),
                        label: {
                            Text("LOGIN")
                                .font(.custom("Alegreya-Regular", fixedSize: 30))
                                .padding(10)
                                .frame(width: 300, height: 60)
                                .background(Color("ColorGrenPalido"))
                                .cornerRadius(15.0)
                                .foregroundColor(Color.white)
                        })
                
                    HStack(){
                        Text("Dont have an account?")
                        Button(action: {}, label: {
                            Text("Sign Up")
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
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
