//
//  info.swift
//  SeaPlastic
//
//  Created by Khushi Sinha on 4/25/21.
//

import SwiftUI

struct info: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("lightOcean"), Color("sand")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        ScrollView{
            VStack{
                Text("More Info")
                    .font(.title)
                
                description(img: "turt", txt: "One of the biggest problems in today's world is the amount of plastic in the ocean. At least 8 million tons of plastic end up in our oceans every year.")
            
                des2(image: "bird", text: "Floating plastic debris are currently the most abundant items of marine litter. Waste plastic makes up 80% of all marine debris from surface waters to deep-sea sediments.")
                description(img:"turt2", txt:"Plastic has been detected on shorelines of all the continents, with more plastic materials found near popular tourist destinations and densely populated areas.")

                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)

        }
    }
}
}
struct info_Previews: PreviewProvider {
    static var previews: some View {
        info()
    }
}

struct description: View {
    @State var img: String
    @State var txt : String
    var body: some View {
        HStack{
            Image(img)
                .resizable()
                .frame(width: 170, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.leading, 10)
            Text(txt)
                .frame(width:260, height: 200)
            
        }
        .padding()
    }
}

struct des2: View {
    @State var image: String
    @State var text: String
    var body: some View {
        HStack{
            Text(text)
                .frame(width:260, height: 200)
            Image(image)
                .resizable()
                .frame(width: 170, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.leading, 10)
        }
    }
}
