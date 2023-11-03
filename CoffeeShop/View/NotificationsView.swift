//
//  NotificationsView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Notificações")
                    .font(.largeTitle)
                    .padding()
                
                List {
                    NotificationRow(title: "Nova Promoção", message: "Desconto de 10% em todos os cafés hoje!")
                    NotificationRow(title: "Lembrete de Pedido", message: "Seu pedido de café será entregue em breve.")
                }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}

struct NotificationRow: View {
    var title: String
    var message: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)
            Text(message)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding(10)
    }
}
