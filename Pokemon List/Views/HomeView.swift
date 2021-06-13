//
//  HomeView.swift
//  Learn Swift UI
//
//  Created by Wandi on 26/03/21.
//

import SwiftUI


struct HomeView: View {
    var body: some View {
        ZStack(alignment: .top) {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.3052355647, blue: 0.2890732884, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.8392156863, blue: 0.6352941176, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/).ignoresSafeArea(.all).frame(width: .infinity, height: 700)
                Image("orbit-max")
                    .resizable()
                    .frame(width: 400, height: 400)
                    .offset(y: -150)
            }
            ScrollView(showsIndicators: false) {
                VStack {
                    Spacer(minLength: 250)
                    VStack(content: {
                        Text("Nama Wifi")
                            .font(.custom("Muli-Regular", size: 14))
                            .lineSpacing(24)
                            .padding(.top, 50).foregroundColor(Color("TextGray"))
                            .frame(maxWidth: .infinity, alignment: .center)
                        HStack {
                            Text("Modem Rumah")
                                .font(.custom("Muli-Light", size: 24))
                                .lineSpacing(32)
                                .foregroundColor(Color("Text"))
                            Image(systemName: "chevron.right").foregroundColor(Color("OrbitRed"))
                        }
                        HStack(alignment: .center) {
                            Image("online-icon")
                                .resizable()
                                .frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Online")
                                .font(.custom("Muli-Regular", size: 14))
                                .lineSpacing(24)
                                .foregroundColor(Color("TextGray"))
                                .offset(x: -4)
                        }
                        Text("Paket Data Saya")
                            .font(.custom("Muli-Regular", size: 18))
                            .lineSpacing(24)
                            .foregroundColor(Color("Text"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 32)
                            .padding(.leading, 20)
                        
                        VStack(alignment: .center) {
                            Image("gauge")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipped()
                                .padding(.all)
                            Button(action: {
                                print("Delete tapped!")
                            }) {
                                Text("Beli Tambahan Kuota")
                                    .font(.custom("Muli-Bold", size: 16))
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 40)
                                    .foregroundColor(Color("Text"))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color("Text"), lineWidth: 1)
                                    )
                                    .padding()
                            }
                        }
                        .background(Color.white)
                        .cornerRadius(16)
                        .shadow(color: Color(#colorLiteral(red: 0.09803921569, green: 0.1254901961, blue: 0.1254901961, alpha: 0.23)), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        
                        Spacer(minLength: 900)
                        
                    }).frame(minWidth: 0,
                             maxWidth: .infinity,
                             minHeight: 0,
                             maxHeight: .infinity,
                             alignment: .topLeading
                    ).background(Color.white).padding(.top, 0).cornerRadius(40)
                    
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
