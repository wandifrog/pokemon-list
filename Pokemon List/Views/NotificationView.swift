//
//  NotificationView.swift
//  Learn Swift UI
//
//  Created by Wandi on 07/04/21.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Notifikasi")
                    .font(.custom("Muli-Bold", size: 18))
                    .lineSpacing(24)
                    .foregroundColor(Color("Text"))
                HStack {
                    Text("Semua")
                        .font(.custom("Muli-Bold", size: 16))
                        .lineSpacing(24)
                        .foregroundColor(Color("TextGray"))
                    Spacer()
                    Text("Promo")
                        .font(.custom("Muli-Bold", size: 16))
                        .lineSpacing(24)
                        .foregroundColor(Color("TextGray"))
                    Spacer()
                    Text("Info")
                        .font(.custom("Muli-Bold", size: 16))
                        .lineSpacing(24)
                        .foregroundColor(Color("OrbitRed"))
                    Spacer()
                    Text("Transaksi")
                        .font(.custom("Muli-Bold", size: 16))
                        .lineSpacing(24)
                        .foregroundColor(Color("TextGray"))
                }
                .padding(.top, 32)
                .padding(.horizontal, 32)
                .padding(.bottom, 12)
                NotificationContentView()
            }
        }
    }
}

struct NotificationContentView: View {
    let notificationItems = [
        1,2,3
    ]
    var body: some View {
        ScrollView {
            VStack (spacing: 16) {
                NotificationCard(title: "Kode Login OTP Disney+", isRead: true, icon: "key-icon", description: "Kode autorisasi Anda adalah 88372 login Disney+ Anda. Valid selama…", notificationDate: "Hari ini, 07:00")
                NotificationCard(title: "Pembelian Kuota 40GB", isRead: true, icon: "cart-icon", description: "Lorem ipsum dolor sit amet, consectetur adipi scing elit, sed do eiusmod tempor.", notificationDate: "Kemarin, 19:02")
                NotificationCard(title: "Promo Kuota 20GB", isRead: true, icon: "promo-icon", description: "Lorem ipsum dolor sit amet, consectetur adipi scing elit, sed do eiusmod tempor.", notificationDate: "Kemarin, 19:02")
                NotificationCard(title: "Pembelian Kuota 80GB", isRead: true, icon: "cart-icon", description: "Lorem ipsum dolor sit amet, consectetur adipi scing elit, sed do eiusmod tempor.", notificationDate: "Kemarin, 19:02")
                NotificationCard(title: "Pembelian Kuota 80GB", isRead: true, icon: "message-icon", description: "Lorem ipsum dolor sit amet, consectetur adipi scing elit, sed do eiusmod tempor.", notificationDate: "Kemarin, 19:02")
                NotificationCard(title: "Pembelian Kuota 80GB", isRead: true, icon: "cart-icon", description: "Lorem ipsum dolor sit amet, consectetur adipi scing elit, sed do eiusmod tempor.", notificationDate: "Kemarin, 19:02")
                NotificationCard(title: "Pembelian Kuota 80GB", isRead: true, icon: "cart-icon", description: "Lorem ipsum dolor sit amet, consectetur adipi scing elit, sed do eiusmod tempor.", notificationDate: "Kemarin, 19:02")
                NotificationCard(title: "Pembelian Kuota 80GB", isRead: true, icon: "cart-icon", description: "Lorem ipsum dolor sit amet, consectetur adipi scing elit, sed do eiusmod tempor.", notificationDate: "Kemarin, 19:02")
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
        }
    }
}

struct NotificationCard: View {
    let title: String
    let isRead: Bool
    let icon: String
    let description: String
    let notificationDate: String
    
    
    var body: some View {
        HStack {
            HStack {
                Circle()
                    .fill(Color.red)
                    .frame(width: 8, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image(icon)
                    .resizable()
                    .frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .padding(.leading)
            VStack (alignment: .leading) {
                HStack (alignment: .firstTextBaseline) {
                    Text(title)
                        .truncationMode(.tail)
                        .font(.custom("Muli-Bold", size: 14))
                        .lineSpacing(24)
                        .foregroundColor(Color("Text"))
                    Spacer()
                    Text(notificationDate)
                        .font(.custom("Muli-Regular", size: 12))
                        .lineSpacing(16)
                        .foregroundColor(Color("TextGray"))
                }
                Text(description)
                    .font(.custom("Muli-Regular", size: 12))
                    .lineSpacing(2)
                    .foregroundColor(Color("TextGray"))
                    .padding(.top, 4)

            }
            Spacer()
        }
        .frame(height: 88)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color(#colorLiteral(red: 0.09803921569, green: 0.1254901961, blue: 0.1254901961, alpha: 0.14)), radius: 12, x: 2, y: 3)
    }
}


struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
