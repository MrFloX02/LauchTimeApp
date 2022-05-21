//
//  ContentView.swift
//  Shared
//
//  Created by Eric Messager on 02/05/2022.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State var numeroDestinataire = "+330652776660" // code pays et votre numero de telephone
    //@State var numeroDestinataire2 = ""
    @State var message = "A table !"
    
    var body: some View {
        
        VStack {
            HStack {
                Text("LunchTime")
                    .font(.largeTitle)
                    .bold()
                        
                Image(systemName: "bubble.left.fill")
                    .font(.system(size: 26))
                    .foregroundColor(Color.blue)
            }
            .position(x: 200,y: 20)
        
        Button(action: {
            // Quoi faire
            sendMessage(numero: numeroDestinataire,message: message)
            //sendMessage(numero: numeroDestinataire2,message: message)
        }) {
            // À quoi ressemble le bouton
            HStack {
                    Image(systemName: "arrow.up.message.fill")
                        .font(.title)
                    Text("Envoi")
                        .fontWeight(.semibold)
                        .font(.title)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 30)
            .stroke(lineWidth: 1)
            .stroke(Color.blue)
        )
        .position(x: 200)
        }
    }

    struct ContentView_Previews: PreviewProvider { // vue stylisé
        static var previews: some View {
            ContentView()
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.portrait)
        }
    }
    
}

