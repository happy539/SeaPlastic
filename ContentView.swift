//
//  ContentView.swift
//  SeaPlastic
//
//  Created by Khushi Sinha on 4/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("lightOcean"), Color("sand")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            VStack {
                Text("Sea Plastic")
                    .font(.system(size: 65))
                    .padding(50)
                    .font(.title)
                    .foregroundColor(.white)
                
            Spacer()
                
            }
            VStack{
                Image(systemName:"eyes")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(200)
                    .padding(.top, 100)
                NavigationLink(destination: signUp()){
                    Text("Sign Up")
                        .frame(width: 400, height: 50)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("newOrange"), (Color.gray)]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.bottom, 20)
                        .font(.system(size: 20, weight:.medium))
                        
            }
                NavigationLink(destination: welcome()){
                    Text("Login")
                        .frame(width: 400, height: 50)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("newOrange"), (Color.gray)]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 20, weight: .medium))
                }
        }

}
    }
    }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


