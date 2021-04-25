//
//  signUp.swift
//  SeaPlastic
//
//  Created by Khushi Sinha on 4/24/21.
//

import SwiftUI

struct signUp: View {
    @State var username : String = ""
    @State var password : String = ""
    @State var fname : String = ""
    @State var lname : String = ""
    
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("lightOcean"), Color("sand")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                Text("Welcome to Sea Plastic!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 50)
                
                Image(systemName:"tortoise.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 30)
                
                TextField("First Name", text: $fname)
                    .background(Color.clear)
                    .cornerRadius(5.0)
                    .frame(width: 400, height: 50)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 30)
                
                TextField("Last Name", text: $lname)
                    .background(Color.clear)
                    .cornerRadius(5.0)
                    .frame(width: 400, height: 50)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 30)
                
                
                TextField("Username", text: $username)
                    .background(Color.clear)
                    .cornerRadius(5.0)
                    .frame(width: 400, height: 50)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 30)

                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.clear)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .frame(width: 400, height: 50)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 20)
                    
                    NavigationLink(
                        destination: welcome()){
                            Text("Already have an account? Login now!")
                        }
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    
                Spacer()
                NavigationLink(destination: tabView()){
                Text("SIGN UP!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("newOrange"), (Color.gray)]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(10)
                    .font(.system(size: 20, weight: .medium))
                    .cornerRadius(15.0)
            }
                
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
    }



struct signUp_Previews: PreviewProvider {
    static var previews: some View {
        signUp()
        
    }


}
