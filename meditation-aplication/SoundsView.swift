//
//  SoundsView.swift
//  meditation-aplication
//
//  Created by Ronaldo Andre Vargas Huaman on 24/03/21.
//

import SwiftUI

struct SoundsView: View {
    var viajes: [Viajes] = [Viajes(id: 0, Imagen: "Rectangle23", nombre: "Painting Forest", visitas: "59899 Listening",                          tiempo: "20 Min"),
                            Viajes(id: 1, Imagen: "Rectangle25", nombre: "Mountaineers", visitas: "45697 Listening", tiempo: "15 Min"),
                            Viajes(id: 2, Imagen: "Rectangle26", nombre: "Lovely Deserts", visitas: "9428 Listening", tiempo: "39 Min"),
                            Viajes(id: 3, Imagen: "Rectangle28", nombre: "The Hill Sides", visitas: "52599 Listening", tiempo: "50 Min")]
    var body: some View {
        ZStack{
            Image("Main")
                .resizable()
            VStack(spacing: 30){
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
                
                ZStack{
                    Image("RelaxSounds")
                        .resizable()
                        .frame(width: 339, height: 195)
                    VStack(alignment: .leading){
                        Text("Relax Sounds")
                            .font(.custom("Alegreya-Regular", fixedSize: 26))
                            .foregroundColor(Color.white)
                        Text("Sometimes the most productive thing you can do is relax")
                            .foregroundColor(Color.white)
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            HStack{
                                Text("play Now")
                                    .foregroundColor(Color.black)
                                Image("Group2")
                                    .resizable()
                                    .frame(width: 19.01, height: 20)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20.0)
                        })
                    }
                    .padding()
                }
                
                VStack(spacing: 19){
                    ForEach(viajes, id: \.id){ viaje in
                        NavigationLink(
                            destination: SoundView(),
                            label: {
                                HStack(spacing: 20){
                                    Image(viaje.Imagen)
                                        .resizable()
                                        .frame(width: 65, height: 65, alignment: .center)
                                    VStack{
                                        Text(viaje.nombre)
                                            .font(.custom("Alegreya-Regular", fixedSize: 24.5))
                                        Text(viaje.visitas)
                                            .foregroundColor(Color("ColorBlancoGris"))
                                    }
                                    
                                    Spacer()
                                    Text(viaje.tiempo)
                                }
                                .frame(width: 350, height: 65)
                            })
                    }
                }
                .foregroundColor(Color("ColorBlancoGris"))
                
                HStack(spacing: 90){
                    NavigationLink(
                        destination: MainView(),
                        label: {
                            Image("Home")
                                .resizable()
                                .frame(width: 21.54, height: 20)
                        })
                    Button(action: {}, label: {
                        Image("Sounds2")
                            .resizable()
                            .frame(width: 30.78, height: 30)
                    })
                    NavigationLink(
                        destination: ProfileView(),
                        label: {
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

struct Viajes: Identifiable{
    var id: Int
    var Imagen: String
    var nombre: String
    var visitas: String
    var tiempo: String
}
struct SoundsView_Previews: PreviewProvider {
    static var previews: some View {
        SoundsView()
    }
}
