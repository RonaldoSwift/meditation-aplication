//
//  SoundView.swift
//  meditation-aplication
//
//  Created by Ronaldo Andre Vargas Huaman on 24/03/21.
//

import SwiftUI

struct SoundView: View {
    var body: some View {
        ZStack{
            Image("Main")
                .resizable()
            VStack(alignment: .center,spacing: 55){
                
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
                
                VStack(spacing: 30){
                    Image("AlbumArt")
                        .resizable()
                        .frame(width: 250, height: 250)
                    
                    VStack{
                        Text("Painting Forest")
                            .bold()
                            .font(.custom("Alegreya-Regular", fixedSize: 26))
                        Text("By: Painting with Passion")
                            .foregroundColor(Color("ColorBlancoGris"))
                    }
                    
                    Image("Time")
                        .resizable()
                        .frame(width: 309.81, height: 50)
                }
                
                HStack(spacing:40){
                    
                    Button(action: {}, label: {
                        Image(systemName: "shuffle")
                            .resizable()
                            .frame(width: 20, height: 19)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .frame(width: 15.37, height: 15)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "pause.circle.fill")
                            .resizable()
                            .frame(width: 75, height: 77)
                    })
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .frame(width: 15.37, height: 15)
                    })
                    Button(action: {}, label: {
                        Image(systemName: "repeat")
                            .resizable()
                            .frame(width: 19.27, height: 19)
                    })
                }
                .foregroundColor(Color("ColorGriss"))
                
                HStack(spacing: 100){
                    Button(action: {}, label: {
                        Image("Home")
                            .resizable()
                            .frame(width: 27.54, height: 27)
                        
                    })
                    Button(action: {}, label: {
                        Image("Sounds2")
                            .resizable()
                            .frame(width: 30.78, height: 30)
                    })
                    Button(action: {}, label: {
                        Image("Profile")
                            .resizable()
                            .frame(width: 15.75, height: 20)
                    })
                }
                
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundView()
    }
}
