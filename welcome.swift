//
//  welcome.swift
//  SeaPlastic
//
//  Created by Khushi Sinha on 4/24/21.
//

import SwiftUI

struct welcome: View {
    @State var username : String = ""
    @State var password : String = ""
    @State var rm = false
    var body: some View {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color("lightOcean"), Color("sand")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    WelcomeView()
                    
                    Image(systemName:"tortoise.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 30)
                    TextField("Username", text: $username)
                        .background(Color.clear)
                        .cornerRadius(5.0)
                        .frame(width: 400, height: 50)
                        .border(Color.black)
                        .padding(.bottom, 30)
                    
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.clear)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                        .frame(width: 400, height: 50)
                        .border(Color.black)
                        .padding(.bottom, 20)
                    Toggle(isOn: $rm, label: {
                        Text("Remember Me")
                            .padding(.leading, 10)
                    })
                    .padding()
                    NavigationLink(
                        destination: signUp()){
                            Text("Don't have an account? Sign up now!")
                        }
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Spacer()
                    NavigationLink(destination: tabView()){
                        Text("LOGIN")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("newOrange"), (Color.gray)]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.system(size: 20, weight: .medium))
                            .cornerRadius(15.0)
                    }
                    .padding()
                    
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
struct welcome_Previews: PreviewProvider {
    static var previews: some View {
        welcome()
    }
}

struct WelcomeView: View {
    var body: some View {
        Text("Welcome Back!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 50)
            
    }
}




