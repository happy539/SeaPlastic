//
//  organize.swift
//  SeaPlastic
//
//  Created by Khushi Sinha on 4/25/21.
//

import SwiftUI

struct organize: View {
    @State private var date = Date()
    @State private var location: String = ""
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("lightOcean"), Color("sand")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Organize")
                    .font(.title)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .padding(.top, -100)
                DatePicker("Event Date", selection: $date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                TextField("Location", text: $location)
                    .background(Color.clear)
                    .cornerRadius(5.0)
                    .frame(width: 400, height: 50)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 30)
                    .padding()
                Text("PUBLISH")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("newOrange"), (Color.gray)]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(10)
                    .font(.system(size: 20, weight: .medium))
                    .cornerRadius(15.0)
                    .padding(.bottom, -50)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            }
        }
    }


struct organize_Previews: PreviewProvider {
    static var previews: some View {
        organize()
    }
}

